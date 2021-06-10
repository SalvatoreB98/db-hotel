--1


--2
SELECT SUM(`pagamenti`.`price`),`pagamenti`.`status`
FROM `pagamenti`
GROUP BY status

--3
SELECT stanza_id AS "NUMERO STANZA",COUNT(stanza_id) AS "PRENOTATA(N VOLTE)"
FROM `prenotazioni`
GROUP BY stanza_id

--4

--5
SELECT COUNT(ospite_id) AS pren_count
FROM `prenotazioni_has_ospiti`
GROUP BY ospite_id
HAVING MAX(pren_count)