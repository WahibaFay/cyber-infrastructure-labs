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
| 02 | [Active Directory](#-exercice-02--active-directory) | Windows Server, PowerShell | 🔄 En cours |
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
├── minilab.pkt          # Fichier Packet Tracer
├── images/
│   └── schema-reseau.png  # Schéma de la topologie
└── configs/
    ├── switch1.txt      # show running-config Switch1
    ├── switch2.txt      # show running-config Switch2
    ├── switch3.txt      # show running-config Switch3
    └── router1.txt      # show running-config Router1
```

### Résultats
- ✅ Attribution DHCP fonctionnelle sur tous les VLANs
- ✅ Routage inter-VLAN opérationnel (VLAN 20 ↔ VLAN 30)
- ✅ Connectivité inter-bureau (Switch1 ↔ Switch2 ↔ Switch3)
- ✅ Ping 0% perte entre tous les équipements

---


---

## 🚀 Comment utiliser ce repo

### Exercice 01 — Packet Tracer
1. Installer [Cisco Packet Tracer](https://www.netacad.com/courses/packet-tracer)
2. Ouvrir `01-packet-tracer/minilab.pkt`
3. Les configurations sont dans `01-packet-tracer/configs/`



## 📁 Structure complète du repo

```
cyber-infrastructure-labs/
├── README.md
├── LICENSE
├── 01-packet-tracer/
│   ├── README.md
│   ├── minilab.pkt
│   ├── images/
│   │   └── schema-reseau.png
│   └── configs/
│       ├── switch1.txt
│       ├── switch2.txt
│       ├── switch3.txt
│       └── router1.txt
├── 02-active-directory/
└── 03-docker/
    

---



---

*Wahiba FAY — Avril 2026*
