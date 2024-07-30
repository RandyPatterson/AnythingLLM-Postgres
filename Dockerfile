FROM  mintplexlabs/anythingllm
COPY ./schema.prisma ./server/prisma/
#Delete existing sqlite migrations
RUN rm -rf ./server/prisma/migrations/
#Copy Postgres migrations
COPY ./migrations/ ./server/prisma/migrations/
