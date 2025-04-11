Questo script ci consente di verificare se l'utente che sta eseguendo lo script è un utente normale o root.
Sono utilizzati due metodi:
Nel primo metodo viene preso in esame l'ID dell'utente
L'ID dell'utente root in un sistema Linux è sempre 0, quindi viene definito come ROOT_UID=0.
Successivamente viene verificato se l'ID dell'utente corrente ($UID) è uguale a 0 (l'ID di root), e viene restituito un messaggio di feedback.
Nel secondo metodo viene preso in esame il nome dell’utente.
Attraverso il comando id -nu o in alternativa si può utilizzare anche whoami.
Dopo aver verificato se il nome dell’utente è root o meno viene restituito un messaggio di feedback.