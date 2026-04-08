# 🗂️ cyber-infrastructure-labs

> Labs d'infrastructure IT couvrant la configuration réseau, l'administration système et la containerisation.

**Auteur** : Wahiba FAY  
**Date** : Avril 2026  
**Stack** : Cisco IOS · PowerShell · Docker · Nginx · MariaDB

---

## 📋 Contenu du repo

| # | Exercice | Technologies | Statut |
|---|----------|-------------|--------|
| 01 | [Réseau multi-VLAN](#-exercice-01--réseau-multi-vlan-cisco-packet-tracer) | Cisco Packet Tracer, IOS CLI | ✅ Terminé |
| 02 | [Active Directory](#-exercice-02--active-directory) | Windows Server, PowerShell | ✅ Terminé |
| 03 | [Docker WordPress](#-exercice-03--docker--wordpress) | Docker, Nginx, MariaDB, PHP | ✅ Terminé |

---

## 🌐 Exercice 01 : Réseau multi-VLAN (Cisco Packet Tracer)

### Objectif
Concevoir et configurer un réseau d'entreprise segmenté en VLANs pour 3 bureaux distincts avec routage inter-VLAN, serveur DHCP et passerelle Internet.

### Architecture
```
![Schéma réseau](images/schema-reseau.png)
```

### VLANs configurés

| VLAN | Nom | Réseau | Usage |
|------|-----|--------|-------|
| 1 | VoIP | 192.168.0.0/24 | Téléphones IP Cisco 7960 |
| 10 | WiFi | 192.168.10.0/24 | Points d'accès Wi-Fi |
| 20 | PC-Fixes | 192.168.20.0/24 | Postes de travail |
| 30 | Administration | 192.168.30.0/24 | Laptops admin |

### Équipements
- 1x Routeur Cisco 1941
- 3x Switch-PT
- 3x Access Point PT-AC
- 6x PC fixes
- 3x Laptops
- 3x Téléphones IP Cisco 7960

### Fichiers
```
01-packet-tracer/
├── configs/
│   ├── router1.txt
│   ├── switch1.txt
│   ├── switch2.txt
│   └── switch3.txt
├── images/
│   └── schema-reseau.png
└── minilab.pkt
```

### Résultats
- ✅ Attribution DHCP fonctionnelle sur tous les VLANs
- ✅ Routage inter-VLAN opérationnel (VLAN 20 ⇔ VLAN 30)
- ✅ Connectivité inter-bureau (Switch1 ⇔ Switch2 ⇔ Switch3)
- ✅ Ping 0% perte entre tous les équipements

---

## 🖥️ Exercice 02 : Active Directory

### Objectif
Déployer un Active Directory sur Windows Server via PowerShell, créer le domaine `laplateforme.io` et peupler l'annuaire depuis un fichier CSV.

### Spécifications
- **Domaine** : laplateforme.io
- **Utilisateurs** : 17 comptes créés depuis CSV
- **Mot de passe initial** : `Azerty_2025!` (changement forcé à la 1ère connexion)

### Fichiers
```
02-active-directory/
├── scripts/
│   ├── create-domain.ps1    # Création du domaine AD
│   └── import-users.ps1     # Import utilisateurs depuis CSV
└── data/
    └── users.csv            # Fichier source des utilisateurs
```

### Résultats
- ✅ Domaine laplateforme.io créé et opérationnel
- ✅ 17 utilisateurs importés depuis CSV
- ✅ Groupes créés et membres assignés automatiquement
- ✅ Changement de mot de passe forcé à la 1ère connexion

---

## 🐳 Exercice 03 : Docker & WordPress

### Objectif
Déployer une stack WordPress complète via Docker Compose en utilisant les images officielles Nginx, MariaDB et WordPress avec volumes persistants.

### Architecture

| Service | Image | Rôle |
|---------|-------|------|
| nginx | nginx:latest | Reverse proxy / Serveur web |
| wordpress | wordpress:latest | Application WordPress + PHP |
| mariadb | mariadb:latest | Base de données |

### Fichiers
```
03-docker/
├── docker-compose.yaml      # Orchestration des services
├── nginx/
│   └── default.conf         # Configuration reverse proxy Nginx
├── .env.example             # Variables d'environnement (exemple)

```

### Résultats
- ✅ Stack WordPress opérationnelle (3 containers actifs)
- ✅ Nginx configuré en reverse proxy
- ✅ MariaDB connectée à WordPress
- ✅ Page d'installation WordPress accessible sur `http://localhost`

---

## 🚀 Comment utiliser ce repo

#### Exercice 01 — Packet Tracer
1. Installer [Cisco Packet Tracer](https://www.netacad.com/courses/packet-tracer)
2. Ouvrir `01-packet-tracer/minilab.pkt`
3. Les configurations sont dans `01-packet-tracer/configs/`

#### Exercice 02 — Active Directory
1. Déployer une VM Windows Server 2022
2. Exécuter `02-active-directory/scripts/create-domain.ps1`
3. Exécuter `02-active-directory/scripts/import-users.ps1`
4. Le fichier CSV source est dans `02-active-directory/data/users.csv`

#### Exercice 03 — Docker & WordPress
1. Installer Docker et Docker Compose sur ta machine
2. Copier `.env.example` en `.env` et adapter les mots de passe
3. Exécuter `docker compose up -d` depuis `03-docker/`
4. Accéder à WordPress sur `http://localhost`

---

## 📁 Structure complète du repo

```
cyber-infrastructure-labs/
├── 01-packet-tracer/
│   ├── minilab.pkt
│   ├── images/
│   │   └── schema-reseau.png
│   └── configs/
│       ├── switch1.txt
│       ├── switch2.txt
│       ├── switch3.txt
│       └── router1.txt
├── 02-active-directory/
│   ├── scripts/
│   │   ├── create-domain.ps1
│   │   └── import-users.ps1
│   └── data/
│       └── users.csv
├── 03-docker/
│   ├── docker-compose.yaml
│   ├── nginx/
│   │   └── default.conf
│   ├── .env.example
├── LICENSE
└── README.md
```

---

*Wahiba FAY — Avril 2026*
