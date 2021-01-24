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