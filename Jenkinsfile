pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('myapp:latest') // Tag the image with a name
                }
            }
        }
        stage('Deploy Docker Image') {
            steps {
                script {
                    // Push the Docker image to a registry if needed
                    // docker.withRegistry('http://registry.example.com') {
                    //     docker.image('my-httpd-image').push('latest')
                    // }
                    // Run the Docker container
                    docker.image('myapp:latest').run('-p 8080:80 -d')
                }
            }
        }
    }
}
