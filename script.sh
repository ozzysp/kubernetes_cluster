echo "Making images... "

docker build -t ozzysp/projeto-backend:1.0 backend/.
docker build -t ozzysp/projeto-database:1.0 database/.

echo "Making push of images... "

docker push ozzysp/projeto-backend:1.0
docker push ozzysp/projeto-database:1.0

echo "Done push files"
echo "Making services at Kubernetes Cluster... "

kubectl apply -f ./services.yml

echo "Making deployments... "

kubectl apply -f ./deployment.yml 

echo "All done!!!"
