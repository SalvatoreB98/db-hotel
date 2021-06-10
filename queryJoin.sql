SELECT ospite_id,COUNT(ospite_id),ospiti.name,ospiti.lastname 
FROM `prenotazioni_has_ospiti` 
INNER JOIN `ospiti` 
ON prenotazioni_has_ospiti.ospite_id = ospiti.id 
GROUP BY ospite_id 
HAVING COUNT(ospite_id)>=2