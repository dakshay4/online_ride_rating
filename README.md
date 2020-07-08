# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
```rake db:create```
```rake db:migrate```

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## Database Tables
users, rides, ratings, ride_passengers

table - rides
|id|chauffeur_id|from|to|start_time|end_timedistance|ride_type|created_at|updated_at|

table - ratings
|	id	|	value	|	giver_id	|	receiver_id	|	ride_id	|	comments	|	created_at	|	updated_at	|


table - ride_passengers
|id|ride_id|passenger_id|created_at|updated_at|