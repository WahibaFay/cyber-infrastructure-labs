# 🔐 cyber-infrastructure-labs

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
| 03 | [Docker WordPress](#-exercice-03--docker--wordpress) | Docker, Nginx, MariaDB, PHP | 🔄 En cours |

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
├── minilab.pkt
└── README.md
```

### Résultats
- ✅ Attribution DHCP fonctionnelle sur tous les VLANs
- ✅ Routage inter-VLAN opérationnel (VLAN 20 ↔ VLAN 30)
- ✅ Connectivité inter-bureau (Switch1 ↔ Switch2 ↔ Switch3)
- ✅ Ping 0% perte entre tous les équipements

---
## 🪟 Exercice 02 : Active Directory

### Objectif
Déployer un Active Directory sur Windows Server via PowerShell, créer le domaine `laplateforme.io` et peupler l'annuaire depuis un fichier CSV.

### Spécifications
- **Domaine** : laplateforme.io
- **Utilisateurs** : 17 comptes créés depuis CSV
- **Mot de passe initial** : `Azerty_2025!` (changement forcé à la 1ère connexion)

### Fichiers

```
├── 02-active-directory/
│   ├── scripts/
│   │   ├── create-domain.ps1   # Création du domaine AD
│   │   └── import-users.ps1    # Import utilisateurs depuis CSV
│   └── data/
│       └── users.csv           # Fichier source des utilisateurs


```

---

## 🚀 Comment utiliser ce repo

### Exercice 01 — Packet Tracer
1. Installer [Cisco Packet Tracer](https://www.netacad.com/courses/packet-tracer)
2. Ouvrir `01-packet-tracer/minilab.pkt`
3. Les configurations sont dans `01-packet-tracer/configs/`

#### Exercice 02 — Active Directory
1. Déployer une VM Windows Server 2022
2. Exécuter `02-active-directory/scripts/create-domain.ps1`
3. Exécuter `02-active-directory/scripts/import-users.ps1`
4. Le fichier CSV source est dans `02-active-directory/data/users.csv`

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
├── LICENSE
└── README.md
    

---



---

*Wahiba FAY — Avril 2026*
