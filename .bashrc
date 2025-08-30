alias soba="source ~/.bashrc"
alias viba="vi ~/.bashrc"

alias kga="kubectl get all"
alias kgaa="kubectl get all -A"

#Helm
alias kgingc="kubectl get ingressclass"
alias kdelingc="kubectl delete ingressclass"
alias kgval="kubectl get validatingwebhookconfigurations"
alias kdelval="kubectl delete validatingwebhookconfiguration"

alias kcns="kubectl create namespace"

alias kgi="kubectl get ingress"
alias kgia="kubectl get ingress -A"


alias kgdep="kubectl get deployment"
alias kgdepa="kubectl get deployment -A"
alias kgpa="kubectl get pod -A"
alias kdelp="kubectl delete pod"
alias kdeldep="kubectl delete deployment"
alias kgsa="kubectl get service -A"
alias kgns="kubectl get namespace"
alias kgno="kubectl get node"
alias kgcm="kubectl get cm"
alias kgsec="kubectl get secret"
alias kging="kubectl get ingress"
alias kgev="kubectl get events"
alias kgcrd="kubectl get crd"

alias k='kubectl'
alias kg='kubectl get'
alias kd='kubectl describe'
alias kl='kubectl logs'
alias kdel='kubectl delete'
alias klog='kubectl logs'
alias krun='kubectl run'
alias kapply='kubectl apply -f'
alias kctx='kubectl config current-context'
alias kuse='kubectl config use-context'
alias kns='kubectl config set-context --current --namespace'
alias kgetns='kubectl get namespaces'
alias kpo='kubectl get pods'
alias ksvc='kubectl get svc'
alias king='kubectl get ingress'
alias kdep='kubectl get deployment'
alias krsec='kubectl get secret'
alias krcfg='kubectl get configmap'
alias ktop='kubectl top'
alias kroll='kubectl rollout'
alias krollh='kubectl rollout history'
alias krolld='kubectl rollout undo'

alias kgs="kubectl get service"
alias kgp="kubectl get pods"
alias kgd="kubectl get deployment"
alias ks="kubectl get service"
alias kgn="kubectl get nodes"
alias kgpa="kubectl get pods --all-namespaces"


alias k='kubectl'
alias kg='kubectl get'
alias kd='kubectl describe'
alias kdp='kubectl describe pod'
alias kdd="kubectl describe deployment"
alias kds="kubectl describe service"
alias kdn="kubectl describe nodes"

alias kaf="kubectl apply -f"


alias dc="docker compose"
alias d="docker"

alias kgpv="kubectl get pv"
alias kgpvc="kubectl get pvc"

alias kcgc="kubectl config get-contexts"
alias kcuc="kubectl config use-context"
alias kcdc="kubectl config delete-context"
alias kccn="kind create cluster --name "

alias kgc="kind get clusters"
alias kdc="kind delete cluster --name"

alias ksetns='kubectl config set-context  --namespace'

alias kgnow="kubectl get nodes -o wide"

alias curlpod="kubectl run curlpod --image=curlimages/curl:latest --restart=Never --rm -it -- /bin/sh"

alias hi="helm install"
alias hu="helm upgrade --install"

alias inl="kubectl logs -n ingress-nginx  --tail=100"

alias di="docker images"


alias ksetns='kubectl config set-context --current --namespace'
alias kgcns="kubectl config view --minify | grep namespace"


alias dex="docker exec -it"

alias dps="docker ps"
alias dbt="docker build -t"


alias kdelall="kubectl delete pv,pvc,deploy,statefulset,svc,ingress --all --grace-period=0 --force"

alias kdelnsf='~/.kdelnsf.sh'
alias kdelpvf='~/.kdelpvf.sh'
alias kdes="kubectl describe"
alias kdel="kubectl delete"
alias kdelpvc="kubectl delete pvc"

alias ckaf="cat <<EOT | kubectl apply -f -"

alias kdi="kubectl describe ingress"

alias kbusy="kubectl run busybox --image=busybox --restart=Never --rm -it -- sh"


alias kdelsvc="kubectl delete service"
alias kdels="kubectl delete service"
alias kdeli="kubectl delete ingress"

alias drrip="docker run --rm -it -p"
alias drr="docker run --rm -it -p"

alias kdesdep="kubectl describe deployment"

alias kgconf="kubectl get configmap"
alias kdelconf="kubectl delete configmap"

alias dexec='~/.dexec.sh'
alias dps="docker ps"

alias kexec="~/.kexec.sh"
alias kx="~/.kexec.sh"

alias kex="kubectl exec -it"
alias ksys='kubectl -n kube-system'
alias ksyslog='kubectl -n kube-system logs'
alias ksysl='kubectl -n kube-system logs'
alias ksysdes='kubectl -n kube-system describe'
alias ksysdp='kubectl -n kube-system describe pod'
alias ksysdespo='kubectl -n kube-system describe pod'


alias krmpo='kubectl delete pods'
alias krmdep='kubectl delete deployment'
alias krmsvc='kubectl delete service'
alias krming='kubectl delete ingress'

alias kgir="kubectl get ingressroute"

alias kgさ='kubectl get service'
alias kgぱ='kubectl get pod -A'

alias krmir="kubectl delete ingressroute"

alias ksysrmpo='kubectl -n kube-system delete pod'
alias kdir="kubectl describe ingressroute"


alias krmp="kubectl delete pods"
alias krms='kubectl delete service'
alias kgda="kubectl get deployment -A"

alias ktop="kubectl top node"


alias kgpag="kgpa|grep Running|wc -l; kgpa|grep Pending|wc -l; kgpa|grep Creating|wc -l"

alias krmpcrash="kubectl get pods | grep -E 'CrashLoopBackOff|ImagePullBackOff' | awk '{print }' | xargs kubectl delete pod"

export PATH=/usr/local/elixir/bin:$PATH
alias rs="rails s -b 0.0.0.0 -p 3000"
alias vii="vim -c \"normal ggdG\" -c \"startinsert\""


alias pl='echo -e "Proto  Port  Process" && \
sudo ss -tunlp \
  | awk '\''NR>1 { split($5,a,":"); print $1, a[length(a)], $7 }'\'' \
  | sort -k2n \
  | column -t'

. "$HOME/.asdf/asdf.sh"

. "$HOME/.asdf/completions/asdf.bash"
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"


gittt() {
  git add .
  git commit -m "$*"
  git push -f origin main
}

. "$HOME/.local/bin/env"
export PATH="$HOME/.local/bin:$PATH"


if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi


complete -W "$(grep -h '^Host ' ~/.ssh/config | awk '{print $2}' | grep -v '\*')" ssh
alias n="nvim"
export PATH="/usr/bin:$PATH"

alias ta='tmux a'
. "$HOME/.cargo/env"


alias co="claude --model default"
alias cs="claude --model sonnet"

alias se="source env/bin/activate"
alias pmr="python manage.py runserver 0.0.0.0:8000"

alias djm="systemctl restart djm2-daphne.service && systemctl status djm2-daphne.service --no-pager"


kp() { fuser -k "$1"/tcp; }

alias rustmail-server="./target/debug/rustmail-csv server -p 8085"
alias rs="make run"
alias rss="make start"
alias rsr="make restart"
alias rsl="make logs"

alias e="emacs"
export OPENROUTER_API_KEY='sk-or-v1-test'

# opencode
export PATH=/root/.opencode/bin:$PATH


dx() {
  docker exec -it "$1" bash
}


alias se="source env/bin/activate"
alias pmr="python manage.py runserver 0.0.0.0:8000"

alias djm="systemctl restart djm2-daphne.service && systemctl status djm2-daphne.service --no-pager"

kp() { fuser -k "$1"/tcp; }
alias cs="claude --model sonnet"


