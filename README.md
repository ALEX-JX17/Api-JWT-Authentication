This is a test about how to use JWT as a authenticatication token on an API project



Gems installed:

gem "jwt", "2.4.1"
gem "bcrypt", "3.1.18"

In the User model will be necesary to use:
    requiere "securerandom"     #to use bcrypt
    has_secure_password         #to encrypt the pass