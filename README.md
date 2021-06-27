# README

Mini proyecto de una API desarrollada en Ruby on Rails

- Versiones y dependencias:

Las versiones de Ruby y Rails utilizados son Ruby 3.0.0 y Rails 6.1.4. Como base de datos se ha utilizado la recomendada por la guía de inicio de Ruby on Rails, SQLite3. Para instalar todas las dependecias se puede seguir la mencionada guía de inicio https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails


- Configuración:

Una vez instalasdas todas las dependencias mencionadas anteriormente se puede clonar el repositorio 
```
git clone https://github.com/adrimll97/PruebaAPI.git
```
Para configurar la base de datos bastaría con lanzar las migraciones del proyecto:
```
bin/rails db:migrate
```
Una vez lanzadas las migraciones se puede lanzar la seed para poblar la base de datos de datos fake:
```
bin/rails db:seed
```
Hecho esto ya tendríamos el proyecto instalado y con datos fake en la base de datos para poder probarlo. 
Ya podríamos levantar el server de rails para tener el proyecto funcionando:
```
bin/rails s -p 3001
```
Con esto ya tendríamos el proyecto funcionando y escuchando en el puerto 3001.


- Estructura y funcionamiento:

El proyecto tiene las siguientes tablas:
```
Persona:    [id, nombre, fecha_nacimiento]
Comunicado: [id, creador_id, receptor_id, asunto, contenido, comunicado_anterior_id]
Adjuntos:   [id, comunicado_id]
```
Se ha hecho un único endpoint en la API, dicho endpoint devuelve un JSON con la informacion de las personas mayores de edad, los comunicados creados por dichas personas, y el total de adjuntos que tiene cada comunicado. 

Para probar dicho endpoint habría que hacer un GET a la ruta `http://localhost:3001/api/v1/personas`, esto se podría hacer con alguna aplicación para hacer llamadas a APIs, como por ejemplo `Postman`, o directamente con curl:
```
curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://localhost:3001/api/v1/personas
```
Esto devuelve un JSON con la siguiente estructura:
```
[
    {
        "id": ID,
        "nombre": "NOMBRE",
        "fecha_nacimiento": "YYYY-MM-DD",
        "comunicados": [
            {
                "id": ID,
                "creador_id": CREADOR_ID,
                "receptor_id": RECEPTOR_ID,
                "asunto": "ASUNTO",
                "contenido": "CONTENIDO",
                "comunicado_anterior_id": COMUNICADO_ANTERIOR_ID,
                "total_adjuntos": TOTAL_ADJUNTOS
            }, ...
        ]
    }, ...
]

```
