--QUESTÃO 1
SELECT users.id, users.name, cities.name AS city FROM users JOIN cities ON users."cityId" = cities.id;

--QUESTÃO 2
SELECT testimonials.id, t1.name AS writer, t2.name AS recipient, testimonials.message 
FROM testimonials 
JOIN users AS t1 ON testimonials."writerId" = t1.id 
JOIN users AS t2 ON testimonials."recipientId" = t2.id;

--QUESTÃO 3
SELECT users.id, users.name, courses.name AS course, schools.name AS school, educations."endDate" 
FROM educations 
JOIN courses ON educations."courseId" = courses.id 
JOIN schools ON educations."schoolId" = schools.id 
JOIN users ON educations."userId" = users.id 
WHERE educations.status = 'finished' AND educations."userId" = 30;

--QUESTÃO 4
SELECT users.id, users.name, roles.name AS role, companies.name AS company, experiences."startDate" 
FROM experiences 
JOIN roles ON experiences."roleId" = roles.id 
JOIN companies ON experiences."companyId" = companies.id 
JOIN users ON experiences."userId" = users.id 
WHERE experiences."endDate" IS NULL AND experiences."userId" = 50;
