# DPE-Audit Schéma - Enveloppe

## Organisation

- [enveloppe.schema.yaml](./enveloppe.schema.yaml): Schéma de données d'une enveloppe
- [enveloppe.examples.yaml](./enveloppe.examples.yaml): Exemples de données d'une enveloppe
- [/baie](./baie/README.md): Sous schéma de données d'une baie
- [/local_non_chauffe](./local_non_chauffe/README.md): Sous schéma de données d'un local non chauffé
- [/mur](./mur/README.md): Sous schéma de données d'un mur
- [/plancher_bas](./plancher_bas/README.md): Sous schéma de données d'un plancher bas
- [/plancher_haut](./plancher_haut/README.md): Sous schéma de données d'un plancher haut
- [/pont_thermique](./pont_thermique/README.md): Sous schéma de données d'un pont thermique
- [/porte](./porte/README.md): Sous schéma de données d'une porte

## TODO

- Ajouter une référence paroi_id à l'ensemble des parois déperditives

## Dictionnaire des données

### Général

| propriété  | type  |                          description                           | nullable |
| :--------: | :---: | :------------------------------------------------------------: | :------: |
| exposition | enum  |                       Exposition au vent                       |   non    |
| q4pa_conv  | float | Perméabilité à l'air sous 4Pa connue et justifiée en m3/(h.m²) |   oui    |

### Refend

|  propriété  |  type  |            description            | nullable |
| :---------: | :----: | :-------------------------------: | :------: |
|     id      | string | Identifiant unique au format UUID |   non    |
| description | string |  Description au format markdown   |   non    |
|   surface   | float  |           Surface en m²           |   non    |
|   inertie   |  enum  |          État d'inertie           |   oui    |

### Plancher intermédiaire

|  propriété  |  type  |            description            | nullable |
| :---------: | :----: | :-------------------------------: | :------: |
|     id      | string | Identifiant unique au format UUID |   non    |
| description | string |  Description au format markdown   |   non    |
|   surface   | float  |           Surface en m²           |   non    |
|   inertie   |  enum  |          État d'inertie           |   oui    |

## Statut

- [x] Investigation
- [ ] Concertation
- [ ] Déploiement
