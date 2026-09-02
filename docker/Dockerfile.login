FROM eclipse-temurin:8-jre
WORKDIR /opt/login
COPY server/login/ .
CMD ["java", "-Dfile.encoding=UTF-8", "-Xmx64m", "-cp", "*:config:.", "net.sf.l2j.loginserver.L2LoginServer"]
