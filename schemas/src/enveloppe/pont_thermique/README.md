# DPE-Audit Schéma - Enveloppe - Pont thermique

## Organisation

- [pont_thermique.schema.yaml](./pont_thermique.schema.yaml): Schéma de données d'un pont thermique
- [pont_thermique.examples.yaml](./pont_thermique.examples.yaml): Exemples de données d'un pont thermique

## Dictionnaire des données

### Général

|  propriété  |  type  |                     description                     | nullable |
| :---------: | :----: | :-------------------------------------------------: | :------: |
|     id      | string | Identifiant unique du pont thermique au format UUID |   non    |
| description | string |  Description du pont thermique au format markdown   |   non    |
|  longueur   | float  |           Longueur du pont thermique en m           |   non    |
|     kpt     | float  |    Valeur du pont thermique connue et justifiée     |   oui    |

### Liaison

|       propriété        |  type   |                      description                      | nullable |
| :--------------------: | :-----: | :---------------------------------------------------: | :------: |
|      type_liaison      |  enum   |                    Type de liaison                    |   non    |
| pont_thermique_partiel | boolean |         Présence d'un pont thermique partiel          |   oui    |
|         mur_id         | string  |     Identifiant du mur associé au pont thermique      |   non    |
|      plancher_id       | string  |   Identifiant du plancher associé au pont thermique   |   oui    |
|      ouverture_id      | string  | Identifiant de l'ouverture associée au pont thermique |   oui    |

## Règles de cohérence additionnelles

La propriété `liaison/mur_id` doit faire référence à un mur existant.

Si la propriété `liaison/plancher_id` est différente de `null`, sa valeur doit faire référence à un plancher bas ou à un plancher haut existant.

Si la propriété `liaison/ouverture_id` est différente de `null`, sa valeur doit faire référence à une baie ou une porte existante.

## Statut

- [x] Investigation
- [ ] Concertation
- [ ] Déploiement
