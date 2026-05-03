INSERT INTO Shelter_location (location_id, name, address, capacity) VALUES
(1, 'Varjupaikade MTÜ',               'Paljasaare tee 85', 75),
(2, 'Hoiupaiga loomad MTÜ',           'Sinirebase 24',     65),
(3, 'Tartu Koduta loomade varjupaik', 'Lemmiku 5',         45);

INSERT INTO Staff (staff_id, name, role, location_id) VALUES
(1,  'Anna Tšigrinski',  'Manager',      1),
(2,  'Kyle Maclachlan',  'Veterinarian', 1),
(3,  'Tobey Maguire',    'Veterinarian', 1),
(4,  'Marcia Cross',     'Staff',        1),
(5,  'Robert Pattinson', 'Manager',      2),
(6,  'Ian Somerhalder',  'Veterinarian', 2),
(7,  'Taylor Lotner',    'Staff',        2),
(8,  'Zendaya',          'Manager',      3),
(9,  'Tom Holland',      'Veterinarian', 3),
(10, 'Jacob Batalon',    'Staff',        3);

INSERT INTO Adopter (adopter_id, name, phone_number, email, address) VALUES
(1, 'Jake Gyllenhaal',   '55539111', 'jakeontop@gmail.com',   'Narva mnt 27'),
(2, 'Tom Felton',        '56634567', 'dracoisbest@gmail.com', 'Raatuse 22'),
(3, 'Leonid Catopyesov', '5520897',  'ljonjaa47@gmail.com',  'Sõpruse pst 226');

INSERT INTO Animal (animal_id, name, species, breed, age, status, intake_date, location_id) VALUES
(1, 'Bella',  'Dog', 'Labrador',           1, 'Adopted', '2024-10-01', 1),
(2, 'Kira',   'Cat', 'Munchkin',           3, 'Adopted',   '2022-12-15', 1),
(3, 'Luna',   'Cat', 'Persian',            4, 'Available', '2023-11-05', 2),
(4, 'Hosico', 'Cat', 'British chinchilla', 9, 'Adopted',   '2017-09-13', 3),
(5, 'Pluuto', 'Dog', 'German Shepherd',    1, 'Available', '2025-11-15', 2);

INSERT INTO Application (application_id, animal_id, adopter_id, staff_id, application_date, status) VALUES
(1, 1, 1, 1, '2024-11-15', 'Approved'), --Bella(1),  Jake,      Anna  
(2, 2, 2, 4, '2023-02-02', 'Approved'), --Kira(1),   Tom,       Marcia
(3, 3, 3, 5, '2025-11-15', 'Pending'), --Luna(2),    Leonid,    Robert
(4, 4, 3, 8, '2018-03-03', 'Approved'), --Hosico(3), Leonid,    Zendaya
(5, 5, 1, 7, '2025-11-26', 'Pending'); --Pluuto(2),  Jake,      taylor

INSERT INTO Vet_check (vet_check_id, animal_id, staff_id, check_date, check_type, notes) VALUES
(1, 1, 2, '2024-10-02', 'Vaccination',      'Initial vaccines'), 
(2, 2, 3, '2022-12-17', 'Check-up',         'Healthy'),
(3, 3, 6, '2023-11-06', 'Vaccination',      'Rabies vaccine'),
(4, 4, 9, '2017-09-23', 'Dental check',     'Teeth cleaned'),
(5, 5, 6, '2025-11-16', 'General check-up', 'Healthy and energetic');
