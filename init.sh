 if [ ! -f $HOSTNAME ]; then
     echo "Initializing the container for the first time"
     mkdir -p /app/server/storage/documents /app/server/storage/vector-cache /app/server/storage/lancedb
     #touch /app/server/storage/anythingllm.db
     #chown -R anythingllm:anythingllm /app/collector /app/server
     chmod 777 -R /app/server/storage
     #sqlite3 anythingllm.db 'pragma journal_mode=wal;'
     touch $HOSTNAME
     echo "Completed Initialization"
 fi

#start ssh server
#https://learn.microsoft.com/en-us/azure/app-service/configure-custom-container?tabs=debian&pivots=container-linux#enable-ssh
set -e
service ssh start



/usr/local/bin/docker-entrypoint.sh