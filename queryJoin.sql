-- 1.
SELECT ospite_id,COUNT(ospite_id) AS `NUM_PRENOTAZIONI`,ospiti.name,ospiti.lastname 
FROM `prenotazioni_has_ospiti` 
LEFT JOIN `ospiti` 
ON prenotazioni_has_ospiti.ospite_id = ospiti.id 
GROUP BY ospite_id 
HAVING NUM_PRENOTAZIONI>=2

-- 2.
SELECT `prenotazioni_has_ospiti`.id AS "prenotazione",ospite_id,`ospiti`.*
FROM `prenotazioni_has_ospiti`
LEFT JOIN `ospiti` 
ON `prenotazioni_has_ospiti`.`ospite_id`=`ospiti`.`id`
ORDER BY prenotazione

--3.
SELECT `pagamenti`.id,`paganti`.`name`,`paganti`.`lastname`,`pagamenti`.`price`,`prenotazioni`.`created_at`
FROM `pagamenti`
LEFT JOIN `prenotazioni`
ON `prenotazioni`.`id` = `pagamenti`.`prenotazione_id`
LEFT JOIN `paganti`
ON `paganti`.`id`=`pagamenti`.`pagante_id`
WHERE `prenotazioni`.`created_at` BETWEEN '2018/05/01' AND '2018/05/31'

--4.
SELECT  SUM(`pagamenti`.`price`) AS `total_price_first_floor`
FROM `pagamenti`
LEFT JOIN `prenotazioni`
	ON `prenotazioni`.`id` = `pagamenti`.`prenotazione_id`
LEFT JOIN `stanze`
	ON `prenotazioni`.`stanza_id` = `stanze`.`id`
WHERE `stanze`.`floor` = 1

--5.
SELECT *
FROM `pagamenti`
LEFT JOIN `paganti`
ON `pagamenti`.`pagante_id`=`paganti`.`id`
WHERE `pagamenti`.`prenotazione_id` = 7