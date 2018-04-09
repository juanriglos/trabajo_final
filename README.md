# trabajo_final

#Configuracion

Posicionados en el directorio proyecto ejecutar en linea de comando
```
 bundle install
 bundle exec rake db:migrate
 bundle exec rake db:seed
 bundle exec rails s
 ```
Para ejecutar la aplicacion ingresar en el navegador a localhost:3000

#Gema
**Sorcery** para la administración de roles


**Usuario nuevo** tiene validaciones  
```
  Password is too short (minimum is 3 characters)
  Password confirmation doesn't match Password
  Password confirmation can't be blank
```
**Bootstrap** para frontend


#Roles

**usuario administrador** agregado con ``` bundle exec rake db:seed```
Usuario: admin@admin.com
Password: 111


Administrador único rol que puede guardar recursos y administrar recursos.
Falta validar que el recurso no se pueda usar por otro usuario en el mismo momento.
