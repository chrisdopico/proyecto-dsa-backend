cd ..
cd servicio-almacenamiento
docker build -t evntual/redsensors-servicio-almacenamiento:1.0.0 .

cd ..
cd servicio-broker-mqtt
docker build -t evntual/redsensors-servicio-mqtt-broker:1.0.0 .

cd ..
cd servicio-consulta
docker build -t evntual/redsensors-servicio-consulta:1.0.0 .

cd ..
cd servicio-servidor-local
docker build -t evntual/redsensors-servidor-local:1.0.0 .