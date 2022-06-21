<p align="center">
<img src="./docs/assets/images/REDSensors_logo_1_sin_fondo.png" width="100">
</p>
<hr>
<h1 align="center">Sistema REDSensors - Backend</h1>
<h3 align="center">Desarrollo de Software Avanzado</h3>
<h4 align="center">Máster Universitario en Desarrollo Ágil de Software para la Web</h4>
<h4 align="center">Universidad de Alcalá</h4>
<h5 align="center">Curso 2021-2022</h5>
<h6 align="center" style="font-style: italic">Christian Dopico, David Abarca, Jorge Romero, Justin Hernández, Williams Rodríguez</h6>
<hr>

<!-- ÍNDICE -->

<details open="open">
	<summary>Índice</summary>
	<ol>
		<li>
			<a href="#about-the-project">El proyecto</a>
		</li>
        <li>
			<a href="#about-the-project">Diseño</a>
			<ul>
                <li><a href="#built-with">Stack</a></li>
				<li><a href="#built-with">Arquitectura backend</a></li>
			</ul>
		</li>
		<li>
			<a href="#getting-started">Como empezar</a>
			<ul>
				<li><a href="#prerequisites">Requisitos previos</a></li>
				<li><a href="#installation">Instalación</a></li>
			</ul>
		</li>
		<li><a href="#license">Licenciamiento</a></li>
		<li><a href="#contact">Contacto</a></li>
	</ol>
</details>

<!-- EL RPOYECTO -->

## El proyecto

![Sistema REDSensors](./docs/assets/images/*.png)

Backend Node-RED: [Backend REDSensors](https://uah-frameworks-frontend-trabajo-final-vue-giodimagio.vercel.app/) (desplegado con [...]())

<!-- DISEÑO -->
## Diseño

En esta sección se listan las tecnologías, frameworks, librerías y otras herramientas o recursos relevantes usados para la realización del proyecto.

### Stack

#### Tecnologías:

* [JavaScript ES6](https://262.ecma-international.org/6.0/)

#### Framework Node.js:

* [Node-RED](https://nodered.org/)

#### Librerías:

##### Servicio Almacenamiento
* [node-red-contrib-crypto-js (MongoDB client node)](https://flows.nodered.org/node/node-red-contrib-mongodb4)

##### Servicio Broker MQTT:
* [node-red-contrib-aedes (MQTT Broker)](https://flows.nodered.org/node/node-red-contrib-aedes)

##### Servicio Consulta:
* [node-red-contrib-crypto-js (MongoDB client node)](https://flows.nodered.org/node/node-red-contrib-mongodb4)
* [node-red-contrib-crypto-js (Crypto Standards library)](https://flows.nodered.org/node/node-red-contrib-crypto-js)
* [node-red-contrib-uuid (Crypto Standards library)](https://flows.nodered.org/node/node-red-contrib-uuid)

#### Otros recursos utilizados en el desarrollo:

* [VSCode](https://code.visualstudio.com/)
* [npm](https://www.npmjs.com/)
* [Git](http://git-scm.com/)
* [GitHub](https://github.com/)
* [Markdown](https://www.markdownguide.org/basic-syntax/)
* [Postman](https://www.postman.com/)
* [Docker](https://www.docker.com/)

### Arquitectura backend

<!-- COMO EMPEZAR -->

## Como empezar

En esta sección se listarán los pasos necesarios para obtener una copia local del proyecto y ejecutarlo en modo desarrollo.

### Requisitos previos

Previamente, debemos tener instalado lo siguiente:

* Un editor de código. Para desarrollo web con React lo más recomendable es usar **VSCode**, al cual se pueden añadir extensiones específicas para dicho framework desde el [Marketplace](https://marketplace.visualstudio.com/search?term=react&target=VSCode&category=All%20categories&sortBy=Relevance).

### Instalación

1. Abrimos un terminal y clonamos el repositorio desde [GitHub](https://github.com/chrisdopico/proyecto-dsa-backend), vía HTTPS o SSH:

    HTTPS
   ```sh
   git clone git@github.com:chrisdopico/proyecto-dsa-backend.git
   ```
 	SSH
   ```sh
   git clone https://github.com/chrisdopico/proyecto-dsa-backend.git
   ```
2. Nos movemos a la carpeta del proyecto, e.g.:
   ```sh
   cd ~/gitProjects/uah/desarrollo-software-avanzado/proyecto-dsa-backend
   ```
3. No necesitamos instalar dependencias ya que todo se realiza desde el servidor de desarrollo de Node-RED. 
4. Nos movemos a la carpeta del proyecto, e.g.:
   ```sh
   cd ~/gitProjects/uah/desarrollo-software-avanzado/proyecto-dsa-backend
   ```
5. Necesitamos generar imágenes docker de cada servicio. _Nota: Si queremos únicamente levantar el backend para el desarrollo del front, solo necesitaremos generar una imagen docker del servicio-consulta_:
   ```sh
    cd servicio-almacenamiento
    docker build -t servicio-almacenamiento .

    cd ..
    cd servicio-broker-mqtt
    docker build -t servicio-broker-mqtt .

    cd ../servicio-consulta
    docker build -t servicio-consulta .

    cd ../servicio-servidor-local
    docker build -t servidor-local .
   ```
6. Nos movemos a la carpeta de despliegue, para desplegar los servicios en local:
   ```sh
   cd ../despliegues
   ```
7. Desplegamos los servicios con Docker Compose. _Nota: Si queremos únicamente levantar el backend para el desarrollo del front, solo necesitaremos levantar el contener docker del servicio-consulta_ http://localhost:3000/
   ```sh
   # Levantar todos los servicios
   docker-compose up -d

   # Levantar únicamente el servicio de consulta
   docker-compose up -d servicio-consulta
   ```

8. Lanzar el servidor de desarrollo de Node-RED en : http://localhost:9003/

<!-- LICENCIAMIENTO -->

## Licenciamiento

Distribuido bajo la licencia MIT

<!-- CONTACTO -->

## Contacto

Williams Rodríguez: (Desarrollador web) - [williams.rodriguez@edu.uah.es](williams.rodriguez@edu.uah.es)

Justin Hernández (Arquitectura y Backend) - [justin.hernandez@edu.uah.es](justin.hernandez@edu.uah.es)

Jorge Romero (Responsable de proyecto) - [jorge.romeroc@edu.uah.es](mailto:jorge.romeroc@edu.uah.es)

David Abarca (Diseño Bases de datos) - [david.abarca@edu.uah.es](david.abarca@edu.uah.es)

Christian Dopico (Desarrollador móvil Android) - [chrisitian.dopico@edu.uah.es](chrisitian.dopico@edu.uah.es)