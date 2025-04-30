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
        sh"https://github.com/H3Matteo/projet-dev01.git"
      }
    }
  }
}
