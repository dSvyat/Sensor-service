# project3
Technical specifications:

•/sensors/registration
Registers a new sensor in the system. In other words, it simply adds the new
sensor to the sensor table in the database. The sensors have only one field - the name.
You have to remember the rules of good code and use the DTO for the incoming
sensor object.
Also, you must validate that the sensor with that name is not already in the database. If the sensor with that name is in the database, return error message to the client.
Also, if sensor name is empty or contains less than 3 or more than 30 characters,
error message should be returned to client

•/measurements/add
Adds a new measurement. This is the address where the real sensor would send its data.
The real "value" field contains the air temperature value, the boolean "raining" field contains true/false depending on whether the sensor has registered rain or not. In addition to that, this request passes the sensor object itself, which received and sends these "measurements".
The air temperature, rain values must be stored in a table in the database. Also, each row of that table must contain the name of the sensor that sent those measurements. That is to say the "Measurement" entity has a link to the "Sensor" entity.
All fields at the measurement must be validated.
The value of "value" must not be empty and must be in the range -100 to 100.
The value of "raining" must not be empty.
The value of "sensor" must not be empty. At the same time, the name of the sensor must be validated in the database.
The sensor with this name must be registered in the system (must be in the DB).
If there is no such sensor in the database, there will be an error. Also, don't forget about DTO. On the server, the measurement should set the current time, it must be stored in the database

•/measurements
Returns all measurements from DB

•/measurements/rainyDaysCount
Returns rainy days count

SQL code for creating tables you can find as always in sql folder (project3/src/main/java/ua/vozniuk/project3/sql).

I used Postman to test application.
