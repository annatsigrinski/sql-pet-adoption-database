SELECT * FROM staff;

SELECT ap.application_id, ap.application_date, an.name   AS animal_name, ad.name   AS adopter_name, st.name   AS staff_name
FROM Application ap
JOIN Animal   an 
    ON ap.animal_id  = an.animal_id
JOIN Adopter  ad 
    ON ap.adopter_id = ad.adopter_id
JOIN Staff    st 
    ON ap.staff_id   = st.staff_id
WHERE ap.status = 'Approved'
ORDER BY ap.application_date DESC;

SELECT sl.location_id, sl.name AS location_name,  COUNT(an.animal_id) AS total_animals,
    SUM(CASE WHEN an.status = 'Available' THEN 1 ELSE 0 END) AS available_animals
FROM Shelter_location sl
LEFT JOIN Animal an
    ON sl.location_id = an.location_id
GROUP BY sl.location_id, sl.name
ORDER BY sl.name;

SELECT sub.adopter_id, sub.name, sub.approved_count,
    RANK() OVER (ORDER BY sub.approved_count DESC) AS adoption_rank
FROM (
    SELECT ad.adopter_id, ad.name, COUNT(*) AS approved_count
    FROM Adopter ad
    JOIN Application ap
         ON ad.adopter_id = ap.adopter_id
    WHERE ap.status = 'Approved'
    GROUP BY ad.adopter_id, ad.name
) AS sub;

