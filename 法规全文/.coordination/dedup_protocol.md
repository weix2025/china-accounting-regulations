# 子代理去重协调机制

## 设计原理

### 1. 去重标识生成
```python
def generate_doc_id(title, source_url):
    """生成文档唯一标识"""
    import hashlib
    content = f"{title}|{source_url}"
    return hashlib.md5(content.encode()).hexdigest()[:16]
```

### 2. 共享存储结构
```json
{
  "retrieved_docs": {
    "doc_id_1": {
      "title": "法规名称",
      "url": "来源URL",
      "agent_id": "子代理ID",
      "timestamp": "检索时间",
      "status": "completed"
    }
  },
  "in_progress": {
    "doc_id_2": {
      "title": "法规名称",
      "url": "来源URL", 
      "agent_id": "子代理ID",
      "start_time": "开始时间"
    }
  }
}
```

### 3. 子代理检索流程
```
1. 生成目标文档ID
2. 读取共享存储
3. 检查是否已存在：
   - 如果存在且completed：跳过
   - 如果存在且in_progress：跳过（其他代理正在处理）
   - 如果不存在：标记为in_progress，开始检索
4. 检索完成后标记为completed
5. 保存文档到指定目录
```

### 4. 通讯协议
- **存储位置**：`/root/.openclaw/workspace/法规全文/.coordination/`
- **主文件**：`retrieval_status.json`（所有子代理读写）
- **锁机制**：文件级锁防止并发冲突
- **心跳检测**：定期清理长时间in_progress的任务

### 5. 去重策略
- **精确去重**：相同URL的文档只检索一次
- **标题去重**：相同标题的文档优先保留官方来源
- **版本去重**：保留最新版本，历史版本标记为archive
