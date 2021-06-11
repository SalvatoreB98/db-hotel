--1
SELECT YEAR(`date_of_birth`) as 'year', COUNT(`id`)
FROM `ospiti`
GROUP BY year

--2
SELECT SUM(`pagamenti`.`price`),`pagamenti`.`status`
FROM `pagamenti`
GROUP BY `status`

--3
SELECT stanza_id AS "NUMERO STANZA",COUNT(stanza_id) AS "PRENOTATA(N VOLTE)"
FROM `prenotazioni`
GROUP BY stanza_id

--4
SELECT HOUR(`created_at`) AS `ORA`, COUNT(`id`) as `prenotazioni`
FROM `prenotazioni` 
GROUP BY ORA
--5
SELECT COUNT(ospite_id) AS `prenotazioni`,`ospite_id`
FROM `prenotazioni_has_ospiti`
GROUP BY `ospite_id`
ORDER BY `prenotazioni` DESC
LIMIT 1