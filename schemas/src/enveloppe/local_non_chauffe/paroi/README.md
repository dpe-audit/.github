# DPE-Audit Schéma - Enveloppe - Local non chauffé - Paroi

## Organisation

- [paroi.schema.yaml](./paroi.schema.yaml): Schéma de données d'une paroi d'un local non chauffé
- [paroi.examples.yaml](./paroi.examples.yaml): Exemples de données d'une paroi d'un local non chauffé

## Dictionnaire des données

### Général

|  propriété  |  type  |                description                 | nullable |
| :---------: | :----: | :----------------------------------------: | :------: |
|     id      | string |    Identifiant unique de la paroi UUID     |   non    |
| description | string | Description de la paroi au format markdown |   non    |
|  isolation  |  enum  |        État d'isolation de la paroi        |   oui    |

### Position

|  propriété  | type  |        description        | nullable |
| :---------: | :---: | :-----------------------: | :------: |
|   surface   | float | Surface de la paroi en m² |   non    |
| mitoyennete | enum  |  Mitoyenneté de la paroi  |   non    |

## Statut

- [x] Investigation
- [ ] Concertation
- [ ] Déploiement
