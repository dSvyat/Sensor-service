create table Sensor(
    id int primary key generated by default as identity,
    name varchar not null unique
);

create table Measurements(
    id int primary key generated by default as identity,
    value double precision not null,
    raining boolean not null,
    measurement_date_time timestamp not null,
    sensor_name varchar references Sensor(name)

)