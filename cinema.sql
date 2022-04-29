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
    'name' VARCHAR(100) NOT NULL
);

CREATE TABLE 'Rooms' (
    'id' INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    'number' INT(11) NOT NULL
);

CREATE TABLE 'Movies' (
    'id' INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    'name' VARCHAR(100) NOT NULL,
    'date' SMALLDATETIME(4) NOT NULL
);

CREATE TABLE 'Places' (
    'id' INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    'number' INT(11) NOT NULL
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
    'priceId' INT(11) NOT NULL,
    'reservationId' INT(11) NOT NULL,
    PRIMARY KEY (priceId, reservationId),
    FOREIGN KEY (priceId) REFERENCES Prices(id),
    FOREIGN KEY (reservationId) REFERENCES Reservations(id)
);