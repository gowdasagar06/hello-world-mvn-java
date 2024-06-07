#!/bin/bash
if [[ $run_sonar == "YES" ]]; then
  echo "Running SonarQube analysis..."
  mvn clean verify sonar:sonar \
    -Dsonar.projectKey=demo \
    -Dsonar.projectName='demo' \
    -Dsonar.host.url=http://13.235.100.209:9000 \
    -Dsonar.token=squ_2f217b09857d7c2af399d2b22f807de615667451
else
  echo "running maven without sonarqube"
  mvn clean verify
fi  
    
      
     
        
