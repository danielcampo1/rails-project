Models

- User
    has many => locations
    has many => travel destinations thru location
    * username
    * password

- locations(country)
    belongs to users
    belongs to travel destination
    * name
    
- Travel destination(city)
    has many => locations
    has many => users thru locations
    * name







    Client Id
11B43MNYXVURUY3YSJ5ONYJI0RBXO45G1UJ5BTZYGANCKMU5

Client Secret
FKQ1GQQMS2ATQ4TBLWVAQA4FQG1MU0JLAMHAY3GC03DAHHD4

https://api.foursquare.com/v2/venues/search?near=austin&client_id=11B43MNYXVURUY3YSJ5ONYJI0RBXO45G1UJ5BTZYGANCKMU5&client_secret=FKQ1GQQMS2ATQ4TBLWVAQA4FQG1MU0JLAMHAY3GC03DAHHD4&v=20210112