-- 1.
SELECT ospite_id,COUNT(ospite_id),ospiti.name,ospiti.lastname 
FROM `prenotazioni_has_ospiti` 
INNER JOIN `ospiti` 
ON prenotazioni_has_ospiti.ospite_id = ospiti.id 
GROUP BY ospite_id 
HAVING COUNT(ospite_id)>=2

-- 2.
SELECT `prenotazioni_has_ospiti`.id AS "prenotazione",ospite_id,`ospiti`.*
FROM `prenotazioni_has_ospiti`
RIGHT JOIN `ospiti` 
ON `prenotazioni_has_ospiti`.`ospite_id`=`ospiti`.`id`

--3.
SELECT `pagamenti`.id,`paganti`.`name`,`paganti`.`lastname`,`pagamenti`.`price`,`prenotazioni`.`created_at`
FROM `pagamenti`
JOIN `prenotazioni`
ON `prenotazioni`.`id` = `pagamenti`.`prenotazione_id`
JOIN `paganti`
ON `paganti`.`id`=`pagamenti`.`pagante_id`
WHERE `prenotazioni`.`created_at`>'2018/05/1'\

--4.
