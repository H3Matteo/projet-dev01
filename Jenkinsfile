pipeline {
  agent any
  stages {
    stage("Supprimer le workspace"){
      steps {
        deleteDir()
      }
    }
    stage("Checkout SCM"){
      steps {
        sh 'git clone https://github.com/H3Matteo/projet-dev01.git'
      }
    }
    stage("Build image docker"){
      steps {
        script{
          sh'docker build -t myimage_nginx .'
          sh'docker tag myimage_nginx jenkins:myimage_nginx .'
        }
      }
    }
    stage("deploiement application"){
      steps {
        script{
          sh'docker image mynginx | true'
          sh'docker rm -f $(docker ps -a) |true'
          sh 'docker run -d --name monapp --hostname monapp -p 8099:80 myimage_nginx'
        }
      }
    }
  }
}
