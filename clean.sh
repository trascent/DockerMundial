#export http_proxy=http://proxy.udistrital.edu.co:3128
PROXY=$http_proxy USER_ID=$UID docker-compose down
echo "contenedores bajados"
echo "Creacion de carpetas necesarias del contenedor..."
if [ -f workspace/ ]; then
    echo "Las Carpetas ya fueron creadas..."
else
    mkdir database
    mkdir -p workspace/{angular,go}
    mkdir -p workspace/go/src
    mkdir -p workspace/go/src/github.com
    mkdir -p workspace/go/src/github.com/trascent
    echo "Carpetas creadas..."
fi
echo "cargando contenedores"
PROXY=$http_proxy USER_ID=$UID docker-compose build
echo "levantando contenedores"
PROXY=$http_proxy USER_ID=$UID docker-compose up -d
echo "contenedores arriba"
echo "Waiting postgres"
until PROXY=$http_proxy USER_ID=$UID  docker-compose exec database sh -c 'psql -U postgres -c "\c equipos"' ; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up - executing backup command"
    PROXY=$http_proxy USER_ID=$UID  docker-compose exec database sh -c 'psql -U postgres -d equipos -a -f /script/scriptbd.sql'
echo "Para ejecutar logs"
echo "Cliente:"
echo "PROXY=$http_proxy USER_ID=$UID docker-compose logs -f client"
echo "Para ejecutar consola"
echo "Cliente:"
echo "PROXY=$http_proxy USER_ID=$UID docker-compose exec client bash"
echo "bajar contenedor:"
echo "PROXY=$http_proxy USER_ID=$UID docker-compose down"
