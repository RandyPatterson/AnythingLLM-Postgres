#copy your .env file to the $STORAGE_LOCATION

export STORAGE_LOCATION=$HOME/anythingllm /
    && mkdir -p $STORAGE_LOCATION /
    && touch "$STORAGE_LOCATION/.env" /
    && docker run -d -p 3001:3001 --cap-add SYS_ADMIN  --env-file .env  -e STORAGE_DIR="/app/server/storage"  acrworkshop123.azurecr.io/myanythingllm:4.3-postgres