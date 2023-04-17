pipeline {
    agent any
    
    stages {
        
        stage ('build') {
            steps {
            
            sh '''
            mvn clean install
            '''
            }
        }
        
        stage('Dockerisation') {
            steps {
             sh '''
             echo "dckr_pat_aUI53BiZkGQUIRUWaAuvUqFFWNA" | docker login -u seiflabs --password-stdin
             docker build -t javaapp .
             docker tag javaapp:latest seiflabs/javaapp:latest
             docker push seiflabs/javaapp:latest
             '''
            }
        }
        
        stage('Run en local') {
            steps {
              sh '''
              docker run --name javaapp -d javaapp
              '''
            }
        }
        
        stage('Deploy on Kubernetes namespace') {
            steps {
                echo 'Deploying....'
            }
        }
        
    }
}
