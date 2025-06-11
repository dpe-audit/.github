# DPE-Audit Schéma - Enveloppe - Porte

## Organisation

- [porte.schema.yaml](./porte.schema.yaml): Schéma de données d'une porte
- [porte.examples.yaml](./porte.examples.yaml): Exemples de données d'une porte

## Dictionnaire des données

### Général

|     propriété      |  type   |                                 description                                  | nullable |
| :----------------: | :-----: | :--------------------------------------------------------------------------: | :------: |
|         id         | string  |                Identifiant unique de la porte au format UUID                 |   non    |
|    description     | string  |                  Description de la porte au format markdown                  |   non    |
|     type_pose      |  enum   |                                 Type de pose                                 |   non    |
|     isolation      |  enum   |                         État d'isolation de la porte                         |   oui    |
|      materiau      |  enum   |                             Matériau de la porte                             |   oui    |
|    presence_sas    | boolean |                      Présence d'un sas devant la porte                       |   non    |
| annee_installation |   int   |                             Année d'installation                             |   oui    |
|         u          |  float  | Coefficient de transmission thermique de la porte connu et justifié en W/m²K |   oui    |

### Position

|      propriété       |  type  |                     description                      | nullable |
| :------------------: | :----: | :--------------------------------------------------: | :------: |
|       paroi_id       | string |           Identifiant de la paroi associée           |   oui    |
| local_non_chauffe_id | string |       Identifiant du local non chauffé associé       |   oui    |
|       surface        | float  |           Surface totale de la porte en m²           |   non    |
|     mitoyennete      |  enum  |               Mitoyenneté de la porte                |   non    |
|     orientation      | float  | Orientation de la porte en angle par rapport au nord |   oui    |

### Vitrage

|  propriété   | type  |     description      | nullable |
| :----------: | :---: | :------------------: | :------: |
| taux_vitrage | float | Taux de vitrage en % |   non    |
| type_vitrage | enum  |   Type de vitrage    |   oui    |

### Menuiserie

|         propriété         |  type   |           description            | nullable |
| :-----------------------: | :-----: | :------------------------------: | :------: |
|      largeur_dormant      |  float  |     Largeur du dormant en mm     |   oui    |
|      presence_joint       | boolean | Présence d'un joint d'étanchéité |   oui    |
| presence_retour_isolation | boolean | Présence d'un retour d'isolation |   oui    |

## Règles de cohérence additionnelles

Si la propriété `position/paroi_id` est différente de `null`, sa valeur doit faire référence à une paroi existante de type `mur`, `plancher_bas` ou `plancher_haut`.

Si la propriété `position/local_non_chauffe_id` est différente de `null`, sa valeur doit faire référence à un local non chauffé existant.

## Statut

- [x] Investigation
- [ ] Concertation
- [ ] Déploiement
