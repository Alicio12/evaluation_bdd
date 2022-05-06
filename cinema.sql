CREATE DATABASE CinemasManagement CHARACTER SET utf8;

CREATE TABLE 'Users' (
    'id' INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    'email' VARCHAR(254) NOT NULL UNIQUE,
    'password' VARCHAR(60) NOT NULL,
    'lastName' VARCHAR(100) NOT NULL,
    'firstName' VARCHAR(100) NOT NULL,
    'age' INT(11) NOT NULL,
    'job' VARCHAR(100) NOT NULL
);

CREATE TABLE 'Roles' (
    'id' INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    'name' VARCHAR(100) NOT NULL
);

CREATE TABLE 'UserRoles' (
    'userId' INT(11) NOT NULL,
    'roleId' INT(11) NOT NULL,
    PRIMARY KEY (userId, roleId),
    FOREIGN KEY (userId) REFERENCES Users(id),
    FOREIGN KEY (roleId) REFERENCES Roles(id)
);

CREATE TABLE 'Cinemas' (
    'id' INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    'name' VARCHAR(100) NOT NULL,
    'address' VARCHAR(100) NOT NULL,
    'city' VARCHAR(100) NOT NULL
);

CREATE TABLE 'Rooms' (
    'id' INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    'number' INT(11) NOT NULL,
    'cinemaId' INT(11) NOT NULL,
    FOREIGN KEY (cinemaId) REFERENCES Cinemas(id)
);

CREATE TABLE 'Movies' (
    'id' INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    'name' VARCHAR(100) NOT NULL,
    'date' SMALLDATETIME(4) NOT NULL,
    'roomId' INT(11) NOT NULL,
    FOREIGN KEY (roomId) REFERENCES Rooms(id)
);

CREATE TABLE 'Places' (
    'id' INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    'number' INT(11) NOT NULL,
    'movieId' INT(11) NOT NULL,
    FOREIGN KEY (movieId) REFERENCES Movies(id)
);

CREATE TABLE 'Prices' (
    'id' INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    'name' VARCHAR(100) NOT NULL,
    'amount' FLOAT(11) NOT NULL
);

CREATE TABLE 'Reservations' (
    'id' INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    'userId' INT(11) NOT NULL,
    'placeId' INT(11) NOT NULL,
    'priceId' INT(11) NOT NULL,
    FOREIGN KEY (userId) REFERENCES Users(id),
    FOREIGN KEY (placeId) REFERENCES Places(id),
    FOREIGN KEY (priceId) REFERENCES Prices(id)
);

CREATE TABLE 'Cart' (
    'id' INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    'reservationId' INT(11) NOT NULL,
    FOREIGN KEY (reservationId) REFERENCES Reservations(id)
);
