This is a test about how to use JWT as a authenticatication token on an API project

Gems installed:

gem "jwt", "2.4.1"
gem "bcrypt", "3.1.18"


Notes about what I have done

In the User model will be necesary to add:

    requiere "securerandom"     #to use bcrypt
    has_secure_password         #to encrypt the pass

To add the ability to encode and decode a json web token we'll create a 

    json_web_token.rb

file in the controllers/concerns directory. Once we had created this functions, we'll need a function that let us to autheticate to the app and for this example we will add it in the file: 

    applicaction_controller.rb 

This file is a module that extend ActiveSupport, module where we defined 2 methods:

    jwt_encode
    jwt_decode

Now we need to have a controller for authenticate us to the app. For that we'll generate a new controller: 

    authentication_controller.rb

inside this file we'll add a login function. DON'T FORGET "SKIP_BEFORE_ACTION" for the login method


For a simple and visual test we'll to use postman application, but before that, we added an user by console. Setting an user whiht email, username, password, etc. as you want and the we'll use this data to send to our api to generate a token, token that we'll use to make request to our API.

by POST 
Throug the URL http://localhost:3000/auth/login 
In the body as form_data, send:
    email:correo@correo.com
    password:123qwe
expected:
    To get the token

by GET
Throug the URL http://localhost:3000/user
In the header, send:
    Authorization: the gotten token
expected:
    To get a list of at least one record