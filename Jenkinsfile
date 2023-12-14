pipeline 
{
    agent ('jenkins-node01-w')

    stages 
    {
        stage('Hello') 
        {
            steps 
            {
                echo 'building the image using the docker file'
                sh "sudo docker build /home/ubuntu/jenkins/workspace/first-project -t nik7894/testingimages01:customubuntu3"
                sh "sudo docker rm -f \$(sudo docker ps -aq)"
                sh "sudo docker run -d -p 8880:80  nik7894/testingimages01:customubuntu3 --name jenkins-node01-cn"
            }
        }
    }
}
