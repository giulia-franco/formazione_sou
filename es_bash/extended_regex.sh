# Matchare sequenze alfabetiche di almeno un carattere, sia maiuscole che minuscole

giulia@wabrimac ~ % touch fileciao.txt
giulia@wabrimac ~ % ls  
# Applications	Downloads	Music		VirtualBox VMs	fileciao.txt
# Desktop		Library		Pictures	file.txt	man
# Documents	Movies		Public		file2.txt	prova.sh
giulia@wabrimac ~ % cat fileciao.txt
giulia@wabrimac ~ % vi fileciao.txt 
giulia@wabrimac ~ % cat fileciao.txt 
ciao1
ciao2
ciao3
ciao4
ciao5
ciao6
ciao7
Ciao8
CIAO9
CIAo10

giulia@wabrimac ~ % grep -i "ciao" fileciao.txt
ciao1
ciao2
ciao3
ciao4
ciao5
ciao6
ciao7
Ciao8
CIAO9
CIAo10

giulia@wabrimac ~ % grep -i "9" fileciao.txt
CIAO9

# Togliere tutte le righe di commento di uno script Bash matchando le righe che iniziano con '#'

giulia@wabrimac ~ % touch scriptes.txt
giulia@wabrimac ~ % ls
#Applications	Downloads	Music		VirtualBox VMs	fileciao.txt	scriptes.txt
#Desktop		Library		Pictures	file.txt	man
#Documents	Movies		Public		file2.txt	prova.sh
giulia@wabrimac ~ % vi scriptes.txt 
giulia@wabrimac ~ % cat scriptes.txt 
#riga1
ciao
#riga3
riga4
#riga5
#riga6
parola
#riga8

giulia@wabrimac ~ % grep -i "#" scriptes.txt 
#riga1
#riga3
#riga5
#riga6
#riga8

giulia@wabrimac ~ % grep -v '^\s*#' scriptes.txt 
ciao
riga4
parola

#Matchare in un file le righe che contengono sequenze di 'a' ripetute da 3 a 6 volte

giulia@wabrimac ~ % touch fileaaa.txt
giulia@wabrimac ~ % ls
#Applications	Downloads	Music		VirtualBox VMs	fileaaa.txt	prova.sh
#Desktop		Library		Pictures	file.txt	fileciao.txt	scriptes.txt
#Documents	Movies		Public		file2.txt	man
giulia@wabrimac ~ % vi fileaaa.txt 
giulia@wabrimac ~ % cat fileaaa.txt 
aaaa
ciaaaoo
caaaane
AAAA
ciao
albero
pane
buste
orto

giulia@wabrimac ~ % grep -E 'a{3,6}' fileaaa.txt 
aaaa
ciaaaoo
caaaane

# Matchare in un file tutte le righe che contengono una delle seguenti parole: apple, pear, orange
giulia@wabrimac ~ % touch fileapple.txt
giulia@wabrimac ~ % ls
#Applications	Downloads	Music		VirtualBox VMs	fileaaa.txt	man
#Desktop		Library		Pictures	file.txt	fileapple.txt	prova.sh
#Documents	Movies		Public		file2.txt	fileciao.txt	scriptes.txt
giulia@wabrimac ~ % cat fileapple.txt 
giulia@wabrimac ~ % vi fileapple.txt 
giulia@wabrimac ~ % cat fileapple.txt 

1. I ate an apple for breakfast.
2. She loves the taste of pear.
3. I squeezed fresh orange juice this morning.
4. The apple tree is in full bloom.
5. He handed me a pear from the garden.
6. The dog ran quickly.
7. It rained all night long.
8. She smiled brightly at the news.
9. The sun was setting over the horizon.
10. He found his keys under the table.

giulia@wabrimac ~ % grep -E "apple|pear|orange" fileapple.txt 
1. I ate an apple for breakfast.
2. She loves the taste of pear.
3. I squeezed fresh orange juice this morning.
4. The apple tree is in full bloom.
5. He handed me a pear from the garden.


