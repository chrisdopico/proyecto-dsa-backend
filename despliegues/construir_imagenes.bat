cd servicio-almacenamiento
docker build -t servicio-almacenamiento .

cd ..
cd servicio-broker-mqtt
docker build -t servicio-broker-mqtt .

cd ..
cd servicio-consulta
docker build -t servicio-consulta .

cd ..
cd servicio-servidor-local
docker build -t servidor-local .