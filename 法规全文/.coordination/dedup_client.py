#!/usr/bin/env python3
"""
子代理去重客户端模块
每个子代理导入此模块进行去重检查和通讯
"""

import json
import hashlib
import time
import os
from pathlib import Path

COORDINATION_DIR = "/root/.openclaw/workspace/法规全文/.coordination"
STATUS_FILE = f"{COORDINATION_DIR}/retrieval_status.json"
LOCK_FILE = f"{COORDINATION_DIR}/retrieval_status.lock"

class DedupClient:
    def __init__(self, agent_id):
        self.agent_id = agent_id
        os.makedirs(COORDINATION_DIR, exist_ok=True)
    
    def generate_doc_id(self, title, url):
        """生成文档唯一标识"""
        content = f"{title}|{url}"
        return hashlib.md5(content.encode()).hexdigest()[:16]
    
    def check_and_acquire(self, title, url):
        """
        检查是否需要检索，如果需要则标记为in_progress
        返回: (should_retrieve, doc_id, existing_info)
        """
        doc_id = self.generate_doc_id(title, url)
        
        # 读取当前状态
        status = self._read_status()
        
        # 检查是否已存在
        if doc_id in status.get("retrieved_docs", {}):
            return False, doc_id, status["retrieved_docs"][doc_id]
        
        if doc_id in status.get("in_progress", {}):
            return False, doc_id, status["in_progress"][doc_id]
        
        # 标记为in_progress
        if "in_progress" not in status:
            status["in_progress"] = {}
        
        status["in_progress"][doc_id] = {
            "title": title,
            "url": url,
            "agent_id": self.agent_id,
            "start_time": time.strftime("%Y-%m-%d %H:%M:%S")
        }
        
        self._write_status(status)
        return True, doc_id, None
    
    def mark_completed(self, doc_id, title, url, file_path):
        """标记检索完成"""
        status = self._read_status()
        
        # 从in_progress移除
        if doc_id in status.get("in_progress", {}):
            del status["in_progress"][doc_id]
        
        # 添加到retrieved_docs
        if "retrieved_docs" not in status:
            status["retrieved_docs"] = {}
        
        status["retrieved_docs"][doc_id] = {
            "title": title,
            "url": url,
            "agent_id": self.agent_id,
            "timestamp": time.strftime("%Y-%m-%d %H:%M:%S"),
            "status": "completed",
            "file_path": file_path
        }
        
        self._write_status(status)
    
    def _read_status(self):
        """读取状态文件"""
        if not os.path.exists(STATUS_FILE):
            return {"retrieved_docs": {}, "in_progress": {}}
        
        try:
            with open(STATUS_FILE, 'r', encoding='utf-8') as f:
                return json.load(f)
        except:
            return {"retrieved_docs": {}, "in_progress": {}}
    
    def _write_status(self, status):
        """写入状态文件（简单实现，无锁）"""
        with open(STATUS_FILE, 'w', encoding='utf-8') as f:
            json.dump(status, f, ensure_ascii=False, indent=2)
    
    def get_stats(self):
        """获取当前统计"""
        status = self._read_status()
        return {
            "total_completed": len(status.get("retrieved_docs", {})),
            "total_in_progress": len(status.get("in_progress", {})),
            "my_completed": sum(1 for d in status.get("retrieved_docs", {}).values() 
                              if d.get("agent_id") == self.agent_id)
        }

# 使用示例
if __name__ == "__main__":
    client = DedupClient("agent_001")
    
    # 检查是否需要检索
    should_retrieve, doc_id, existing = client.check_and_acquire(
        "企业会计准则第1号-存货",
        "https://kjs.mof.gov.cn/..."
    )
    
    if should_retrieve:
        print(f"需要检索: {doc_id}")
        # ... 执行检索 ...
        client.mark_completed(doc_id, "企业会计准则第1号-存货", 
                             "https://kjs.mof.gov.cn/...", 
                             "/path/to/file.md")
    else:
        print(f"已存在，跳过: {existing}")
    
    print(client.get_stats())
