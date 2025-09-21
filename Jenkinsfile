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
                sh 'mvn clean deploy'
            }
        }
        stage('Archive Artifacts') {
            steps {
                archiveArtifacts artifacts: 'target/**', fingerprint: true
            }
        }
    }
}
