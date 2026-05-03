# SQL Pet Adoption Database Project

This project was created as part of university coursework. It models a relational database for an animal shelter adoption system.

## Goal

The goal of the project was to design a centralized database that connects animals, adopters, adoption applications, staff, veterinary checks, and shelter locations.

## Tools and concepts

- SQL
- Relational database design
- Entity-relationship diagram
- Primary and foreign keys
- JOIN queries
- GROUP BY and aggregate functions
- Window function RANK()

## Database structure

The database includes the following main tables:

- `Shelter_location`
- `Staff`
- `Adopter`
- `Animal`
- `Application`
- `Vet_check`

## Example queries

The project includes SQL queries for:

- listing approved adoption applications
- counting animals by shelter location
- counting available animals
- ranking adopters by approved adoptions

## Files

- `tables.sql` – database schema
- `data.sql` – sample data
- `queries.sql` – analytical SQL queries
- `dictionary.txt` – data dictionary
- `Tsigrinski_Anna_project.pdf` – project report
- `pet_adoption.db` – SQLite database file
