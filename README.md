# employeemanager
This backend is created in springboot as a basic CRUD for an Employee Manager App, the html snippet como from https://bootdey.com the architecture is made from *Junior Toussaint* .
I adapted the code and dockerize the application adding one container for the BD in mysql and other for the app, db module run/waits a mysql db helthcheck before starting the backend.
# how to run it
Simple run in the base ditrectory
```docker compose up```
# How to test it
In the main folder there is a file  "Angular.postman_collection.json" that can be imported to postman to test the backed individually
Link
---
https://github.com/yvivasUnosquare/usermanager/blob/main/src/main/Angular.postman_collection.json
