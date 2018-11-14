# Social Boost / private-events 
Rails app made to showcase advanced database relations
where we can:

* Sign up new users
* Send confirmation email (no action required)
* Create events
* Keep track of past and upcoming events
* Invite other users to the events
* Accept or decline pending invitations

You can [check it online here](https://social-boost-app.herokuapp.com/) (It can take a bit to load as Heroku starts a dyno)

The seeds include 2 example users usable to log in:

* example1@mail.com (User1)
* example2@mail.com (User2)

Or you can clone the repo and run:

`$bundle install`

`$rails db:migrate`

`$rails db:seed`

`$rails server`

Go to http://localhost:3000/ in your web browser

---------------------------------------------

Aplicación Rails donde podemos:

* Registrar nuevos usuarios
* Enviar emails de confirmación (no es necesario realizar ninguna acción)
* Crear eventos
* Realizar seguimiento de pasados y futuros eventos
* Invitar otros usuarios a los eventos
* Aceptar o rechazar invitaciones

[Pruébela online](https://social-boost-app.herokuapp.com/) (Puede tardar un poco en cargar mientras Heroku crea una máquina virtual)

Las semillas incluyen 2 usuarios:

* example1@mail.com (User1)
* example2@mail.com (User2)

O puede probarla localmente:

`$bundle install`

`$rails db:migrate`

`$rails db:seed`

`$rails server`

Abra http://localhost:3000/ en su navegador
