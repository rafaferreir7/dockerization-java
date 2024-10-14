# Use uma imagem base com JDK 17 e Maven instalados
FROM maven:3.8.4-openjdk-17

# Define o diretório de trabalho no container
WORKDIR /app

# Copia o arquivo pom.xml
COPY pom.xml .

# Copia o código-fonte
COPY src ./src

# Constrói a aplicação
RUN mvn clean package

# Expõe a porta 8080
EXPOSE 8080

# Comando para rodar a aplicação
CMD ["java", "-jar", "target/*.jar"]

