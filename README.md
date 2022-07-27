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

Now it is necessary to have a controller for authenticate us. we'll generate a new controller: 
    authentication_controller.rb
and inside we'll add a login function