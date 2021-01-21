Models

- User
    has many => destination
    has many => #contries thru destination
    * username
    * password

- destination(personal side)
    belongs to => users
    belongs to => country
    * name
    * time of year of visit
    * excursion


- countries
    has many => destination
    has many => user through destination
    *  name
    *  description
    *  culture
    *  economy
    
    
    # user creates the crud for the destinations
    # form for destiantion
        *countries
- 
   


-------
- user 
    has many 
-------
- user
    has many => lists
    has many => travel destiantion
    has many => items through lists

- list (countries to visit)
    belongs_to => users
    has many => travel Dest through user

-items
    belongs to travel destination

- travel destination (places to visit inside country)
    has many => item
    has many => list through user







    Client Id
11B43MNYXVURUY3YSJ5ONYJI0RBXO45G1UJ5BTZYGANCKMU5

Client Secret
FKQ1GQQMS2ATQ4TBLWVAQA4FQG1MU0JLAMHAY3GC03DAHHD4

https://api.foursquare.com/v2/venues/search?near=austin&client_id=11B43MNYXVURUY3YSJ5ONYJI0RBXO45G1UJ5BTZYGANCKMU5&client_secret=FKQ1GQQMS2ATQ4TBLWVAQA4FQG1MU0JLAMHAY3GC03DAHHD4&v=20210112