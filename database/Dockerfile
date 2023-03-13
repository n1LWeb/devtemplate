#FROM mcr.microsoft.com/mssql/server:2017-latest
#FROM mcr.microsoft.com/azure-sql-edge
FROM cagrin/azure-sql-edge-arm64

USER 0

# Create a config directory
RUN mkdir -p /usr/config
WORKDIR /usr/config

# Bundle config source
COPY . /usr/config

# Grant permissions for to our scripts to be executable
RUN chmod +x /usr/config/entrypoint.sh
RUN chmod +x /usr/config/configure-db.sh

RUN mkdir -p /usr/config/db

ENTRYPOINT ["./entrypoint.sh"]

