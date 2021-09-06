./gradlew :fineract-provider:spotlessApply
./gradlew bootRun -Psecurity=oauth --args='--server.port=8080 --server.servlet.context-path=/midas1 --SSLPort=9443'