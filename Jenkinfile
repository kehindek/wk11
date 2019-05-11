properties([pipelineTriggers([githubPush()])]) 

 node('linux'){
    stage('Setup'){
        git 'https://github.com/kehindek/wk11.git'
   withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'], [$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
    // some block
     sh "aws s3 cp s3://kehindek-assignment-4/classweb.html /workspace/docker-pipeline/index.html"
}
    }
    stage('Build Stage'){

       // This step should not normally be used in your script. Consult the inline help for details.
 sh 'docker build -t classweb:1.0 .'

}
    
     stage('Test Stage'){
// This step should not normally be used in your script. Consult the inline help for details.

    sh' docker run -d --name classweb1 -p 80:80 --env NGINX_PORT=80 classweb:1.0'
    sh'''
         CONTAINER_IP=$(docker inspect --format "{{.NetworkSettings.IPAddress}}" classweb1
         curl -s $CONTAINER_IP
         '''
         sh 'docker stop classweb1'
         sh 'docker rm classweb1'
     }
  
}
