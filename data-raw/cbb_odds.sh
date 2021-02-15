git clone https://github.com/swagger-api/swagger-codegen
cd swagger-codegen
mvn clean package
java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate \
   -i ../cfbd-api-r/api-docs.json \
   -l r \
   -o c:/users/saiem/documents/github/cfb/cfbd-api-r



