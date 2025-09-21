pipeline {
    agent {
        node {
            label 'maven'
        }
    }

    stages {
        stage('Clone-code') {
            steps {
                git branch: 'main', url: 'https://github.com/Krish8896/tweet-trend-new-devops-.git'
            }
        }
    }
}
