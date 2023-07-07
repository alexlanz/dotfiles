kubernetes_change_cluster() {
    if [[ $1 = "docker" ]]; then
        export KUBECONFIG=$HOME/.kube/config
    else
        export KUBECONFIG=$HOME/.kube/$1
    fi
}

kubernetes_change_namespace() {
    kubectl config set-context $(kubectl config current-context) --namespace=$1
}

kubernetes_get() {
    case "$1" in
            n)
                RESOURCE="node"
                ;;
            s)
                RESOURCE="service"
                ;;
            d)
                RESOURCE="deployment"
                ;;
            p)
                RESOURCE="pod"
                ;;
            j)
                RESOURCE="job"
                ;;
            v)
                RESOURCE="persistentvolumeclaim"
                ;;
            *)
                RESOURCE=${1}
    esac

    kubectl get ${RESOURCE} ${@:2}
}

kubernetes_describe() {
    case "$1" in
            n)
                RESOURCE="node"
                ;;
            s)
                RESOURCE="service"
                ;;
            d)
                RESOURCE="deployment"
                ;;
            p)
                RESOURCE="pod"
                ;;
            j)
                RESOURCE="job"
                ;;
            v)
                RESOURCE="persistentvolumeclaim"
                ;;
            *)
                RESOURCE=${1}
    esac

    kubectl describe ${RESOURCE} ${@:2}
}

kubernetes_delete() {
    case "$1" in
            n)
                RESOURCE="node"
                ;;
            s)
                RESOURCE="service"
                ;;
            d)
                RESOURCE="deployment"
                ;;
            p)
                RESOURCE="pod"
                ;;
            j)
                RESOURCE="job"
                ;;
            v)
                RESOURCE="persistentvolumeclaim"
                ;;
            *)
                RESOURCE=${1}
    esac

    kubectl delete ${RESOURCE} ${@:2}
}

alias kub="kubectl"
alias kubcc="kubernetes_change_cluster"
alias kubcn="kubernetes_change_namespace"
alias kubg="kubernetes_get"
alias kubd="kubernetes_describe"
alias kubr="kubernetes_delete"
