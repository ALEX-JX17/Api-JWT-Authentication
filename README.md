This is a test about how to use JWT as a authenticatication token on an API project



Gems installed:

gem "jwt", "2.4.1"
gem "bcrypt", "3.1.18"

In the User model will be necesary to use:
    requiere "securerandom"     #to use bcrypt
    has_secure_password         #to encrypt the pass

To add the ability to encode and decode a json web token we'll create a 
    json_web_token.rb
file in the controllers/concerns directory. Once we had created this functions, we'll need a function that let us to autheticate and for this example we will add it in the applicaction_controller.rb file.

Now we need to have a controller for authenticate us. we'll generate a new controller: 
    authentication_controller.rb
and inside we'll add a login function.
    DON'T FORGET SKIP _BEFORE_ACTION for login method **


To test this API i'm using postman,
by POST 
throug the URL http://localhost:3000/auth/login 
then send email and password to get the token
after get the token 
by GET
throug the URL http://localhost:3000/user
and sending the token throug the Headders - Authorization - the token we got
We'll get a list of users from our apllication