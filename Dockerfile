FROM scratch

WORKDIR /app

COPY goroute /app

COPY author /app/author

COPY appcenter /app/appcenter

COPY swaggerUI /app/swaggerUI

COPY goroute.json /app

COPY goroute-env.json /app

EXPOSE 32001

ENTRYPOINT ["goroute","-config","goroute.json","-env","goroute-env.json"]