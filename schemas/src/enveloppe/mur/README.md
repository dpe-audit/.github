# DPE-Audit Schéma - Enveloppe - Mur

## Organisation

- [mur.schema.yaml](./mur.schema.yaml): Schéma de données d'un mur
- [mur.examples.yaml](./mur.examples.yaml): Exemples de données d'un mur

## Dictionnaire des données

### Général

|        propriété        |  type   |                                    description                                    | nullable |
| :---------------------: | :-----: | :-------------------------------------------------------------------------------: | :------: |
|           id            | string  |                     Identifiant unique du mur au format UUID                      |   non    |
|       description       | string  |                       Description du mur au format markdown                       |   non    |
|     type_structure      |  enum   |                             Type de structure du mur                              |   oui    |
|   epaisseur_structure   |  float  |                         Epaisseur du mur non isolé en mm                          |   oui    |
|      type_doublage      |  enum   |                                 Type de doublage                                  |   oui    |
| presence_enduit_isolant | boolean |                           Présence d'un enduit isolant                            |   oui    |
|     paroi_ancienne      | boolean |                        Mur constitué de matériaux anciens                         |   oui    |
|         inertie         |  enum   |                                  Inertie du mur                                   |   oui    |
|   annee_construction    |   int   |                           Année de construction du mur                            |   oui    |
|    annee_renovation     |   int   |                            Année de rénovation du mur                             |   oui    |
|           u0            |  float  | Coefficient de transmission thermique du mur non isolé connu et justifié en W/m²K |   oui    |
|            u            |  float  |      Coefficient de transmission thermique du mur connu et justifié en W/m²K      |   oui    |

### Position

|      propriété       |  type  |               description                | nullable |
| :------------------: | :----: | :--------------------------------------: | :------: |
|       surface        | float  |           Surface du mur en m²           |   non    |
|     orientation      | float  | Orientation du mur rapport au nord en °  |   oui    |
|     mitoyennete      |  enum  |            Mitoyenneté du mur            |   non    |
| local_non_chauffe_id | string | Identifiant du local non chauffé associé |   oui    |

### Isolation

|           propriété            | type  |                  description                  | nullable |
| :----------------------------: | :---: | :-------------------------------------------: | :------: |
|         etat_isolation         | enum  |            État d'isolation du mur            |   non    |
|         type_isolation         | enum  |            Type d'isolation du mur            |   oui    |
|        annee_isolation         |  int  |           Année d'isolation du mur            |   oui    |
|      epaisseur_isolation       | float |          Epaisseur d'isolation en mm          |   oui    |
| resistance_thermique_isolation | float | Résistance thermique de l'isolation en m².K/W |   oui    |

## Statut

- [x] Investigation
- [ ] Concertation
- [ ] Déploiement
