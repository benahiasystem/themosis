Themosis framework
==================

[![Build Status](https://travis-ci.org/themosis/themosis.svg?branch=dev)](https://travis-ci.org/themosis/themosis)

Themosis framework es una herramienta dirigida a desarrolladores de WordPress de cualquier nivel. Pero cuanto mejor conocimiento de WordPress y PHP tengas, más fácil será trabajar con él.

Themosis framework es una herramienta para ayudarlo a desarrollar sitios web y aplicaciones web más rápido utilizando [WordPress] (https://wordpress.org). Usando una sintaxis de código simple y elegante, Themosis framework lo ayuda a estructurar y organizar su código y le permite administrar y escalar mejor sus sitios web y aplicaciones de WordPress.

Requisitos
------------
Ubuntu Server 20.04
Docker version 20.10.12

Configuración del dominio
------------
- Desde el gestor de DNS del dominio a conectar, configurar la ip publica del servidor de aplicaciones.
- desde el servidor de aplicaciones habilitar el trafico HTTP y HTTPS.

Installation
------------

- Navegar hasta carpeta /var/www/html
- clonar este repositorio 
- ejecutar: cp .env.sample .env
- en el archivo .env colocar la URL de la aplicación y datos de BD especificados en el docker-compose.yml en la sección mysql
- ejecutar: docker-compose up -d
- 

License
-------
The Themosis framework is open-source software licensed under [GPL-2+ license](http://www.gnu.org/licenses/gpl-2.0.html).
