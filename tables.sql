DROP TABLE IF EXISTS Vet_check;
DROP TABLE IF EXISTS Application;
DROP TABLE IF EXISTS Animal;
DROP TABLE IF EXISTS Adopter;
DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS Shelter_location;

CREATE TABLE Shelter_location (
    location_id   INT PRIMARY KEY,
    name          VARCHAR(100) NOT NULL,
    address       VARCHAR(200),
    capacity      INT
);

CREATE TABLE Staff (
    staff_id    INT PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,
    role        VARCHAR(50),
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES Shelter_location(location_id)
);

CREATE TABLE Adopter (
    adopter_id    INT PRIMARY KEY,
    name          VARCHAR(100) NOT NULL,
    phone_number  VARCHAR(50),
    email         VARCHAR(100),
    address       VARCHAR(200)
);


CREATE TABLE Animal (
    animal_id      INT PRIMARY KEY,
    name           VARCHAR(100) NOT NULL,
    species        VARCHAR(50),
    breed          VARCHAR(50),
    age            INT,
    status         VARCHAR(20),
    intake_date DATE,
    location_id    INT,
    FOREIGN KEY (location_id) REFERENCES Shelter_location(location_id)
);

CREATE TABLE Application (
    application_id  INT PRIMARY KEY,
    animal_id       INT NOT NULL,
    adopter_id      INT NOT NULL,
    staff_id        INT,
    application_date DATE,
    status          VARCHAR(20),
    FOREIGN KEY (animal_id)  REFERENCES Animal(animal_id),
    FOREIGN KEY (adopter_id) REFERENCES Adopter(adopter_id),
    FOREIGN KEY (staff_id)   REFERENCES Staff(staff_id)
);

CREATE TABLE Vet_check (
    vet_check_id INT PRIMARY KEY,
    animal_id    INT NOT NULL,
    staff_id     INT,
    check_date   DATE,
    check_type   VARCHAR(100),
    notes        VARCHAR(500),
    FOREIGN KEY (animal_id) REFERENCES Animal(animal_id),
    FOREIGN KEY (staff_id)  REFERENCES Staff(staff_id)
);
