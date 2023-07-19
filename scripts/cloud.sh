#!/bin/bash

cd "$(dirname "$BASH_SOURCE")" \
    && source '../utils/base.sh' \
    && source '../utils/brew.sh'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    brew_install 'Ansible' 'ansible'

    brew_install 'Kubernetes CLI' 'kubectl'
    brew_install 'Kubernetes Helm' 'helm'

    brew_tap 'Terraform' 'hashicorp/tap'
    brew_install 'Terraform' 'hashicorp/tap/terraform'

    brew_install 'DigitalOcean CLI' 'doctl'

    brew_install 'AWS CLI' 'awscli'
    brew_install 'AWS IAM Authenticator' 'aws-iam-authenticator'

}

main
