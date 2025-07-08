# DPE-Audit Schéma - Enveloppe - Local non chauffé - Baie

## Organisation

- [baie.schema.yaml](./baie.schema.yaml): Schéma de données d'une baie d'un local non chauffé
- [baie.examples.yaml](./baie.examples.yaml): Exemples de données d'une baie d'un local non chauffé

## Dictionnaire des données

### Général

|            propriété            |  type   |                description                | nullable |
| :-----------------------------: | :-----: | :---------------------------------------: | :------: |
|               id                | string  |    Identifiant unique de la baie UUID     |   non    |
|           description           | string  | Description de la baie au format markdown |   non    |
|            type_baie            |  enum   |               Type de baie                |   non    |
|            materiau             |  enum   |            Matériau de la baie            |   oui    |
|          type_vitrage           |  enum   |              Type de vitrage              |   oui    |
| presence_rupteur_pont_thermique | boolean |  Présence d'un rupteur de pont thermique  |   oui    |

### Position

|  propriété  |  type  |                       description                       | nullable |
| :---------: | :----: | :-----------------------------------------------------: | :------: |
|   surface   | float  |                Surface de la baie en m²                 |   non    |
| orientation | float  |     Orientation de la baie par rapport au nord en °     |   oui    |
| inclinaison | float  | Inclinaison de la baie par rapport à l'horizontale en ° |   non    |
| mitoyennete |  enum  |                 Mitoyenneté de la baie                  |   non    |
|  paroi_id   | string |  Identifiant de la paroi du local non chauffé associée  |   oui    |

## Statut

- [x] Investigation
- [ ] Concertation
- [ ] Déploiement
