# 🏓 ping-pong con Vagrant e Docker

Questo progetto utilizza **Vagrant** per creare **due VM Ubuntu** con **Docker** installato.  
Su ciascuna VM viene eseguito un container basato sull’immagine [`ealen/echo-server`](https://hub.docker.com/r/ealen/echo-server), che espone un semplice server web sulla porta `3000`.

Ogni **60 secondi**, il container si sposta automaticamente da una VM all’altra, simulando un effetto **ping-pong 🏓** tra i due nodi.

---

## 🎯 Obiettivo

Configurare **due nodi virtuali** con Vagrant, installare Docker su entrambi e **migrare automaticamente** il container `ealen/echo-server` da una VM all’altra ogni 60 secondi.

---

## 📦 Requisiti

- 🖥️ [VirtualBox](https://www.virtualbox.org/)
- 📦 [Vagrant](https://www.vagrantup.com/)
- 🐳 Docker – per eseguire i container 

---

## ⚙️ Come funziona

1. Il `Vagrantfile` crea **due VM Ubuntu** con **IP statici**.
2. Durante il provisioning viene installato **Docker** su entrambe le macchine.
3. Lo script `ping-pong.sh`:
   - Avvia le VM con `vagrant up`
   - Entra in un **ciclo infinito**:
     - Avvia il container `my_pingpong` su `vm1`
     - Attende 10 secondi
     - Ferma e rimuove il container da `vm1`
     - Ripete l'operazione su `vm2`
   - …e così via, simulando un rimbalzo continuo tra le due macchine virtuali. 🏓

---

## 📁 Struttura del progetto

```bash
├── Vagrantfile
├── ping-pong.sh
└── README.md