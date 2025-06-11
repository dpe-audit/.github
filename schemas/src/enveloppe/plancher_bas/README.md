# DPE-Audit Schéma - Enveloppe - Plancher bas

> [!NOTE]  
> Un plancher bas désigne une paroi horizontale donnant sur un local chauffé uniquement sur sa face supérieure.

## Organisation

- [plancher_bas.schema.yaml](./plancher_bas.schema.yaml): Schéma de données d'un plancher bas
- [plancher_bas.examples.yaml](./plancher_bas.examples.yaml): Exemples de données d'un plancher bas

## Dictionnaire des données

### Général

|     propriété      |  type  |                                        description                                         | nullable |
| :----------------: | :----: | :----------------------------------------------------------------------------------------: | :------: |
|         id         | string |                     Identifiant unique du plancher bas au format UUID                      |   non    |
|    description     | string |                       Description du plancher bas au format markdown                       |   non    |
|   type_structure   |  enum  |                             Type de structure du plancher bas                              |   oui    |
|      inertie       |  enum  |                                  Inertie du plancher bas                                   |   oui    |
| annee_construction |  int   |                           Année de construction du plancher bas                            |   oui    |
|  annee_renovation  |  int   |                            Année de rénovation du plancher bas                             |   oui    |
|         u0         | float  | Coefficient de transmission thermique du plancher bas non isolé connu et justifié en W/m²K |   oui    |
|         u          | float  |      Coefficient de transmission thermique du plancher bas connu et justifié en W/m²K      |   oui    |

### Position

|      propriété       |  type  |                     description                      | nullable |
| :------------------: | :----: | :--------------------------------------------------: | :------: |
|       surface        | float  |            Surface du plancher bas en m²             |   non    |
|      perimetre       | float  |            Périmètre du plancher bas en m            |   non    |
|     mitoyennete      |  enum  |             Mitoyenneté du plancher bas              |   non    |
| local_non_chauffe_id | string |       Identifiant du local non chauffé associé       |   oui    |

### Isolation

|           propriété            | type  |                  description                  | nullable |
| :----------------------------: | :---: | :-------------------------------------------: | :------: |
|         etat_isolation         | enum  |       État d'isolation du plancher bas        |   non    |
|         type_isolation         | enum  |       Type d'isolation du plancher bas        |   oui    |
|        annee_isolation         |  int  |       Année d'isolation du plancher bas       |   oui    |
|      epaisseur_isolation       | float |          Epaisseur d'isolation en mm          |   oui    |
| resistance_thermique_isolation | float | Résistance thermique de l'isolation en m².K/W |   oui    |

## Statut

- [x] Investigation
- [ ] Concertation
- [ ] Déploiement
