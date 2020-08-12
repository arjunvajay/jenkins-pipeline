pipeline {

     agent any
     environment {
         PASS = credentials('DockerHub')
     }

     stages{

        stage('Build') {


             steps{
                 sh '''
                 ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                 ./jenkins/build/build.sh

              '''
             }
         }//stage-build

        stage('Test') {

             steps{

                 sh './jenkins/test/mvn-test.sh mvn test'
             }

             post {
                 always {
                     junit 'java-app/target/surefire-reports/*.xml'
                 }
             }
        }

        stage('Push') {

                steps{

                      sh './jenkins/push/push.sh'
                  }
        }

        stage('Deploy') {
            steps {
                echo "Deployed"
            }
        }

     }//stages


}//pipeline

