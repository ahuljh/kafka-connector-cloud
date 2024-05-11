# Instruction
## Step 1: Build kafka-connector image
- Run: docker build -t jdbc-debezium-connect -f Dockerfile-connector-jdbc-compose .
## Step 2: Build container by docker-compose command
- You can deploy docker-compose by https://www.yuque.com/g/shier-kcdu3/nebtm9/xixgv7v9rl9zgl6h/collaborator/join?token=xZcO9yrygin4OkZe&source=doc_collaborator# 《docker-compose工具安装》
- Then run: docker-compose up -d .