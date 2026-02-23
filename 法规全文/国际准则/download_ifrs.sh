#!/bin/bash

# IFRS/IAS 中文译本下载脚本
# 创建日期：2026-02-23

BASE_DIR="/root/.openclaw/workspace/法规全文/国际准则"
cd "$BASE_DIR"

# 创建目录结构
mkdir -p IFRS IAS ISSB

echo "开始下载 IFRS 准则..."

# IFRS 准则下载（使用澳门会计专业委员会的简体中文译本）
cd IFRS

# IFRS 3
curl -s -L -o "IFRS_3_企业合并.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E8%B2%A1%E5%8B%99%E5%A0%B1%E5%91%8A%E6%BA%96%E5%89%87%E7%AC%AC3%E8%99%9F.pdf" &
echo "Downloading IFRS 3..."

# IFRS 5
curl -s -L -o "IFRS_5_持有待售的非流动资产和终止经营.pdf" "https://www.cpc.gov.mo/uploads/dsf/20240628/%E5%9C%8B%E9%9A%9B%E8%B2%A1%E5%8B%99%E5%A0%B1%E5%91%8A%E6%BA%96%E5%89%87%E7%AC%AC5%E8%99%9F.pdf" &
echo "Downloading IFRS 5..."

# IFRS 7
curl -s -L -o "IFRS_7_金融工具披露.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E8%B2%A1%E5%8B%99%E5%A0%B1%E5%91%8A%E6%BA%96%E5%89%87%E7%AC%AC7%E8%99%9F.pdf" &
echo "Downloading IFRS 7..."

# IFRS 11
curl -s -L -o "IFRS_11_合营安排.pdf" "https://www.cpc.gov.mo/uploads/dsf/20240628/%E5%9C%8B%E9%9A%9B%E8%B2%A1%E5%8B%99%E5%A0%B1%E5%91%8A%E6%BA%96%E5%89%87%E7%AC%AC11%E8%99%9F.pdf" &
echo "Downloading IFRS 11..."

# IFRS 12
curl -s -L -o "IFRS_12_在其他主体中权益的披露.pdf" "https://www.cpc.gov.mo/uploads/dsf/20240628/%E5%9C%8B%E9%9A%9B%E8%B2%A1%E5%8B%99%E5%A0%B1%E5%91%8A%E6%BA%96%E5%89%87%E7%AC%AC12%E8%99%9F.pdf" &
echo "Downloading IFRS 12..."

# IFRS 13
curl -s -L -o "IFRS_13_公允价值计量.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E8%B2%A1%E5%8B%99%E5%A0%B1%E5%91%8A%E6%BA%96%E5%89%87%E7%AC%AC13%E8%99%9F.pdf" &
echo "Downloading IFRS 13..."

# IFRS 16
curl -s -L -o "IFRS_16_租赁.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E8%B2%A1%E5%8B%99%E5%A0%B1%E5%91%8A%E6%BA%96%E5%89%87%E7%AC%AC16%E8%99%9F.pdf" &
echo "Downloading IFRS 16..."

wait
echo "IFRS 准则下载完成！"

echo "开始下载 IAS 准则..."
cd ../IAS

# IAS 准则下载
# IAS 2
curl -s -L -o "IAS_2_存货.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC2%E8%99%9F.pdf" &
echo "Downloading IAS 2..."

# IAS 7
curl -s -L -o "IAS_7_现金流量表.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC7%E8%99%9F.pdf" &
echo "Downloading IAS 7..."

# IAS 8
curl -s -L -o "IAS_8_会计政策会计估计变更和差错.pdf" "https://www.cpc.gov.mo/uploads/dsf/20240628/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC8%E8%99%9F.pdf" &
echo "Downloading IAS 8..."

# IAS 12
curl -s -L -o "IAS_12_所得税.pdf" "https://www.cpc.gov.mo/uploads/dsf/20240628/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC12%E8%99%9F.pdf" &
echo "Downloading IAS 12..."

# IAS 16
curl -s -L -o "IAS_16_不动产厂场和设备.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC16%E8%99%9F.pdf" &
echo "Downloading IAS 16..."

# IAS 19
curl -s -L -o "IAS_19_雇员福利.pdf" "https://www.cpc.gov.mo/uploads/dsf/20240628/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC19%E8%99%9F.pdf" &
echo "Downloading IAS 19..."

# IAS 20
curl -s -L -o "IAS_20_政府补助会计和政府援助的披露.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC20%E8%99%9F.pdf" &
echo "Downloading IAS 20..."

# IAS 21
curl -s -L -o "IAS_21_汇率变动的影响.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC21%E8%99%9F.pdf" &
echo "Downloading IAS 21..."

# IAS 23
curl -s -L -o "IAS_23_借款费用.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC23%E8%99%9F.pdf" &
echo "Downloading IAS 23..."

# IAS 24
curl -s -L -o "IAS_24_关联方披露.pdf" "https://www.cpc.gov.mo/uploads/dsf/20240628/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC24%E8%99%9F.pdf" &
echo "Downloading IAS 24..."

# IAS 27
curl -s -L -o "IAS_27_单独财务报表.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC27%E8%99%9F.pdf" &
echo "Downloading IAS 27..."

# IAS 28
curl -s -L -o "IAS_28_联营和合营企业中的投资.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC28%E8%99%9F.pdf" &
echo "Downloading IAS 28..."

# IAS 29
curl -s -L -o "IAS_29_恶性通货膨胀经济中的财务报告.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC29%E8%99%9F.pdf" &
echo "Downloading IAS 29..."

# IAS 32
curl -s -L -o "IAS_32_金融工具列报.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC32%E8%99%9F.pdf" &
echo "Downloading IAS 32..."

# IAS 33
curl -s -L -o "IAS_33_每股收益.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC33%E8%99%9F.pdf" &
echo "Downloading IAS 33..."

# IAS 36
curl -s -L -o "IAS_36_资产减值.pdf" "https://www.cpc.gov.mo/uploads/dsf/20240628/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC36%E8%99%9F.pdf" &
echo "Downloading IAS 36..."

# IAS 37
curl -s -L -o "IAS_37_准备或有负债和或有资产.pdf" "https://www.cpc.gov.mo/uploads/dsf/20240628/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC37%E8%99%9F.pdf" &
echo "Downloading IAS 37..."

# IAS 38
curl -s -L -o "IAS_38_无形资产.pdf" "https://www.cpc.gov.mo/uploads/dsf/20240628/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC38%E8%99%9F.pdf" &
echo "Downloading IAS 38..."

# IAS 39
curl -s -L -o "IAS_39_金融工具确认和计量.pdf" "https://www.cpc.gov.mo/uploads/dsf/20240628/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC39%E8%99%9F.pdf" &
echo "Downloading IAS 39..."

# IAS 40
curl -s -L -o "IAS_40_投资性房地产.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC40%E8%99%9F.pdf" &
echo "Downloading IAS 40..."

# IAS 41
curl -s -L -o "IAS_41_农业.pdf" "https://www.cpc.gov.mo/uploads/dsf/20241216/%E5%9C%8B%E9%9A%9B%E6%9C%83%E8%A8%88%E6%BA%96%E5%89%87%E7%AC%AC41%E8%99%9F.pdf" &
echo "Downloading IAS 41..."

wait
echo "IAS 准则下载完成！"

echo "开始下载 IFRS S1/S2 可持续披露准则..."
cd ../ISSB

# IFRS S1
curl -s -L -o "IFRS_S1_可持续相关财务信息披露一般要求.pdf" "https://www.ifrs.org/content/dam/ifrs/publications/pdf-standards-issb/chinese/2023/issued/part-a/zh-issb-2023-a-ifrs-s1-general-requirements-for-disclosure-of-sustainability-related-financial-information.pdf"
echo "Downloading IFRS S1..."

# IFRS S2
curl -s -L -o "IFRS_S2_气候相关披露.pdf" "https://www.ifrs.org/content/dam/ifrs/publications/pdf-standards-issb/chinese/2023/issued/part-a/zh-issb-2023-a-ifrs-s2-climate-related-disclosures.pdf"
echo "Downloading IFRS S2..."

echo "ISSB准则下载完成！"

cd ..
echo "所有下载任务完成！"
echo ""
echo "统计信息："
find . -name "*.pdf" -exec ls -lh {} \; | awk '{print $9, "(" $5 ")"}'
