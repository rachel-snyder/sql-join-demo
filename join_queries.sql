-- JOIN == INNER JOIN
SELECT people.full_name, people.pass_num, passports.passport_number, passports.expiration_date
FROM people
JOIN passports ON people.pass_num = passports.passport_number;


-- FULL JOIN == FULL OUTER JOIN
SELECT people.full_name, people.pass_num, passports.passport_number, passports.expiration_date
FROM people
FULL JOIN passports ON people.pass_num = passports.passport_number;



-- LEFT JOIN/RIGHT JOIN == LEFT OUTER JOIN/RIGHT OUTER JOIN (right inner would be a contradiction)
SELECT people.full_name, people.pass_num, passports.passport_number, passports.expiration_date
FROM people
RIGHT JOIN passports ON people.pass_num = passports.passport_number;
-- THESE TWO ARE THE SAME
SELECT people.full_name, people.pass_num, passports.passport_number, passports.expiration_date
FROM passports
LEFT JOIN people ON people.pass_num = passports.passport_number;



SELECT people.full_name, people.pass_num, passports.passport_number, passports.expiration_date
FROM people
LEFT JOIN passports ON people.pass_num = passports.passport_number;
-- THESE TWO ARE THE SAME
SELECT people.full_name, people.pass_num, passports.passport_number, passports.expiration_date
FROM passports
RIGHT JOIN people ON people.pass_num = passports.passport_number;