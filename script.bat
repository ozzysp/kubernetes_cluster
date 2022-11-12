echo "Making images... "

docker build -t ozzysp/projeto-backend:1.0 backend/.
docker build -t ozzysp/projeto-database:1.0 database/.

echo "Making push of images... "

docker push ozzysp/projeto-backend:1.0
docker push ozzysp/projeto-database:1.0

echo "Done push files"
