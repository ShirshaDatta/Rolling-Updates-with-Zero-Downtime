if kubectl get pods | grep myweb-deploy
then
kubectl get all
echo "already running"
kubectl rollout restart deployment myweb-deploy
else
echo "creating"
kubectl create -f /root/yml/deployment.yml
kubectl expose deployment myweb-deploy --type=NodePort --port=80
kubectl get all
fi
