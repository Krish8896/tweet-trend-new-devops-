pipeline {
    agent {
        node {
            label 'maven'
        }
    } 
environment {
        PATH = "/opt/apache-maven-3.9.4/bin:$PATH"
}
    stages {
        stage ('Build') {
            steps {
                echo 'Building...'
                sh 'mvn clean deploy -Dmaven.test.skip=true'  // Skip tests during build
                echo 'Build completed.'
            }
        }
        stage('test') {
            steps {
                echo 'Running tests...'
                sh 'mvn surefire-report:report'
                echo 'Tests completed.'
            }
        }
        stage('SonarQube analysis') {
        environment {
            scannerHome = tool 'org-sonarqube-scanner'
        }
            steps {
                withSonarQubeEnv('org-sonarqube-server') { // If you have configured more than one global server connection, you can specify its name }
                sh "${scannerHome}/bin/sonar-scanner"
            }
            }
        }
    }
}
