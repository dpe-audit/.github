# DPE-Audit Schéma - Enveloppe - Plancher haut

> [!NOTE]  
> Un plancher haut désigne une paroi horizontale donnant sur un local chauffé uniquement sur sa face inférieure.

## Organisation

- [plancher_haut.schema.yaml](./plancher_haut.schema.yaml): Schéma de données d'un plancher haut
- [plancher_haut.examples.yaml](./plancher_haut.examples.yaml): Exemples de données d'un plancher haut

## Dictionnaire des données

### Général

|     propriété      |  type  |                                         description                                         | nullable |
| :----------------: | :----: | :-----------------------------------------------------------------------------------------: | :------: |
|         id         | string |                     Identifiant unique du plancher haut au format UUID                      |   non    |
|    description     | string |                       Description du plancher haut au format markdown                       |   non    |
|   configuration    |  enum  |                               Configuration du plancher haut                                |   oui    |
|   type_structure   |  enum  |                             Type de structure du plancher haut                              |   oui    |
|      inertie       |  enum  |                                  Inertie du plancher haut                                   |   oui    |
| annee_construction |  int   |                           Année de construction du plancher haut                            |   oui    |
|  annee_renovation  |  int   |                            Année de rénovation du plancher haut                             |   oui    |
|         u0         | float  | Coefficient de transmission thermique du plancher haut non isolé connu et justifié en W/m²K |   oui    |
|         u          | float  |      Coefficient de transmission thermique du plancher haut connu et justifié en W/m²K      |   oui    |

### Position

|      propriété       |  type  |                      description                      | nullable |
| :------------------: | :----: | :---------------------------------------------------: | :------: |
|       surface        | float  |            Surface du plancher haut en m²             |   non    |
|     mitoyennete      |  enum  |             Mitoyenneté du plancher haut              |   non    |
|     orientation      | float  | Orientation du plancher haut par rapport au nord en ° |   oui    |
| local_non_chauffe_id | string |       Identifiant du local non chauffé associé        |   oui    |

### Isolation

|           propriété            | type  |                  description                  | nullable |
| :----------------------------: | :---: | :-------------------------------------------: | :------: |
|         etat_isolation         | enum  |       État d'isolation du plancher haut       |   non    |
|         type_isolation         | enum  |       Type d'isolation du plancher haut       |   oui    |
|        annee_isolation         |  int  |      Année d'isolation du plancher haut       |   oui    |
|      epaisseur_isolation       | float |          Epaisseur d'isolation en mm          |   oui    |
| resistance_thermique_isolation | float | Résistance thermique de l'isolation en m².K/W |   oui    |

## Statut

- [x] Investigation
- [ ] Concertation
- [ ] Déploiement
