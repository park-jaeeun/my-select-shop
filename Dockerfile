# 1. Java 17 이미지 사용
FROM openjdk:17-jdk-slim

# 2. 작업 디렉터리 설정
WORKDIR /app

# 3. JAR 파일 복사
COPY build/libs/*.jar app.jar

# 4. 8080 포트 개발
EXPOSE 8080

# 4. 실행 명령어
CMD ["java", "-jar", "app.jar"]
