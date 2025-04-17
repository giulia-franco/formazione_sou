PING PONG CON VAGRANT E DOCKER

Questo progetto crea due maccine virtuali, (vm1, vm2).
Su ognuna viene installato Docker, e eseguito un container chiamato (my_pingpong) che viene eseguito a turno su entrambe le vm simulando un effetto ping-pong ogni 10 secondi.

Requisiti:
Virtualbox
Vagrant

Come funziona:
Il vagrantfile crea due vm Ubuntu con IP statici.
Durante il provisioning viene installato Docker su entrambe le vm.
lo script ping-pong.sh esegue il "vagrant up" per avviare le vm, entra in un ciclo infinito che avvia un container sulla vm1, lo mantiene attivo per 10 secondi, rimuove il container dalla vm1 e fa la stessa cosa con la vm2.
