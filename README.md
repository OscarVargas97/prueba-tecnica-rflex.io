# Prueba tecnica rFlex.io

## Instalación

Instrucciones paso a paso sobre cómo instalar el proyecto. Por ejemplo:

```bash
git clone https://github.com/OscarVargas97/prueba-tecnica-rflex.io.git
cd prueba-tecnica-rflex
./install.sh
./run.sh
```

Los comandos indicados anteriormente instalaran los contenedores del proyecto, realizaran las migraciones, los seed, ejecutaran el comando para obtener los datos desde la api solicitada y finalmente los levantara.
Esto se puede revisar en los archivos bash.

## Opción recomendada

Si se desea interactuar con la consola del servidor Laravel, se debe ejecutar
```bash
./attach.sh
```
Esto permitirá que interactué con la interfaz de la consola del contenedor.

## Otras Opciones:

Se puede realizar la instalación directa, para lo cual se recomienda revisar la documentación de Laravel, react y PostgreSQL.
En caso de instalar las dependencias de php y composer, es recomendable iniciar Laravel desde la raíz del repositorio con los siguientes comandos:

```bash
./vendor/bin/sail up -d
./vendor/bin/sail artisan migrate
./vendor/bin/sail artisan db:seed
./vendor/bin/sail artisan app:charge-data
```
En el caso de no querer realizar acciones con docker, puede utilizar los comandos:
```bash
php artisan serve
php artisan migrate
php artisan db:seed
php artisan app:charge-data
```
Para levantar el front-end se recomienda revisar la documentación de node.js e instalar pnpm
```bash
npm install -g pnpm
```
Una vez instalado pnpm, debe realizar la instalación de las dependencias del proyecto
```bash
pnpm install
```
una vez instaladas las dependencias ya puede ejecutar el servidor de pruebas con el comando
```bash
pnpm run dev
# O si es de su preferencia
npm run dev
'''