pipeline {
    agent any

    tools {
        jdk 'OpenJDK-17'
        maven 'Maven-3.9.6'
    }

    environment {
        GIT_REPO = 'https://github.com/s2003n/Maven-Java-WebApp.git'
        DEPLOY_PATH = '/opt/tomcat/webapps/'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git url: "${GIT_REPO}", branch: 'main'
            }
        }

        stage('Build with Maven') {
            steps {
                withMaven(maven: 'Maven-3.9.6') {
                    sh 'mvn clean package -DskipTests'
                }
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                sh '''
                echo "Deploying WAR file locally to Tomcat..."
                sudo cp target/*.war /opt/tomcat/webapps/
                '''
            }
        }
    }

    post {
        success {
            echo 'Deployment Successful!'
        }
        failure {
            echo 'Deployment Failed.'
        }
    }
}
