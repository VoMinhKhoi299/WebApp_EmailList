# Giai đoạn 1: Build bằng Maven
FROM maven:3.9.6-eclipse-temurin-17 AS builder
WORKDIR /app

# Copy toàn bộ project
COPY . .

# Build ra file .war
RUN mvn clean package -DskipTests

# Giai đoạn 2: Chạy bằng Tomcat
FROM tomcat:9.0

# Xóa webapp mặc định
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy .war đã build vào Tomcat
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

CMD ["catalina.sh", "run"]
