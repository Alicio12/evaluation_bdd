INSERT INTO Users 
    (email, password, lastName, firstName, age, job)    
VALUES
    (john@doe.com, 78*-op, Doe, John, 48, agriculteur);
INSERT INTO Users 
    (email, password, lastName, firstName, age, job)    
VALUES
    (melanie@doe.com, 78*-op, Doe, Melanie, 18, étudiante);
INSERT INTO Users 
    (email, password, lastName, firstName, age, job)    
VALUES
    (emilio@doe.com, 78*-op, Doe, Emilio, 13, écolier);
INSERT INTO Users 
    (email, password, lastName, firstName, age, job)    
VALUES
    (manager@doe.com, 78*-op, Doe, Fabrice, 35, manager);
INSERT INTO Users 
    (email, password, lastName, firstName, age, job)    
VALUES
    (admin@doe.com, 78*-op, Doe, Liliane, 59, admin);

INSERT INTO Roles
    (name)
VALUES 
    (customer);
INSERT INTO Roles
    (name)
VALUES 
    (manager);
INSERT INTO Roles
    (name)
VALUES 
    (admin);

INSERT INTO UserRoles
    (userId, roleId)
VALUES 
    (1, 1);
INSERT INTO UserRoles
    (userId, roleId)
VALUES 
    (2, 1);
INSERT INTO UserRoles
    (userId, roleId)
VALUES 
    (3, 1);
INSERT INTO UserRoles
    (userId, roleId)
VALUES 
    (4, 2);
INSERT INTO UserRoles
    (userId, roleId)
VALUES 
    (5, 3);

INSERT INTO Cinemas 
    (name, adress, city)
VALUES 
    (Cinescapade, 74 Rue des pommiers, Paris);
INSERT INTO Cinemas 
    (name, adress, city)
VALUES 
    (Cinetoile, 62 Avenue de la porte, Toulouse);

INSERT INTO Rooms 
    (number, cinemaId)
VALUES 
    (1, 1);
INSERT INTO Rooms 
    (number, cinemaId)
VALUES 
    (2, 1);
INSERT INTO Rooms 
    (number, cinemaId)
VALUES 
    (3, 1);
INSERT INTO Rooms 
    (number, cinemaId)
VALUES 
    (1, 2);
INSERT INTO Rooms 
    (number, cinemaId)
VALUES 
    (2, 2);
INSERT INTO Rooms 
    (number, cinemaId)
VALUES 
    (3, 2);

INSERT INTO Movies 
    (name, date, roomId)
VALUES 
    (Batman, 2022-07-02 20:00:00, 3);
INSERT INTO Movies 
    (name, date, roomId)
VALUES 
    (Les animaux fantastiques, 2022-05-01 17:30:00, 5);
INSERT INTO Movies 
    (name, date, roomId)
VALUES 
    (Titanic, 2022-01-01 21:00:00, 1);

INSERT INTO Places 
    (number, movieId)
VALUES 
    (59, 1);
INSERT INTO Places 
    (number, movieId)
VALUES 
    (162, 2);
INSERT INTO Places 
    (number, movieId)
VALUES 
    (287, 3);

INSERT INTO Prices 
    (name, amount)
VALUES 
    (Plein tarif, 9.20);
INSERT INTO Prices 
    (name, amount)
VALUES 
    (Etudiant, 7.60);
INSERT INTO Prices 
    (name, amount)
VALUES 
    (Moins de 14ans, 5.90);

INSERT INTO Reservations 
    (userId, placeId, priceId)
VALUES 
    (1, 3, 1);
INSERT INTO Reservations 
    (userId, placeId, priceId)
VALUES 
    (2, 2, 2);
INSERT INTO Reservations 
    (userId, placeId, priceId)
VALUES 
    (3, 1, 3);

INSERT INTO Cart 
    (reservationId)
VALUES 
    (1);
INSERT INTO Cart 
    (reservationId)
VALUES 
    (2);
INSERT INTO Cart 
    (reservationId)
VALUES 
    (3);