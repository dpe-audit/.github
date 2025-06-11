# DPE-Audit Schéma - Enveloppe - Baie

## Organisation

- [baie.schema.yaml](./baie.schema.yaml): Schéma de données d'une baie
- [baie.examples.yaml](./baie.examples.yaml): Exemples de données d'une baie
- [/masque_lointain](./masque_lointain/README.md): Sous schéma de données d'un masque lointain
- [/masque_proche](./masque_proche/README.md): Sous schéma de données d'un masque proche

## TODO

- Dissociation des propriétés masques_proches et masques_lointains
- Suppression de la propriété type_masque

## Dictionnaire des données

### Général

|          propriété          |  type   |                                    description                                    | nullable |
| :-------------------------: | :-----: | :-------------------------------------------------------------------------------: | :------: |
|             id              | string  |                        Identifiant unique de la baie UUID                         |   non    |
|         description         | string  |                    Description de la paroi au format markdown                     |   non    |
|          type_baie          |  enum   |                                   Type de baie                                    |   non    |
|          type_pose          |  enum   |                                   Type de pose                                    |   non    |
|          materiau           |  enum   |                                Matériau de la baie                                |   oui    |
| presence_protection_solaire | boolean |                          Présence de protection solaire                           |   non    |
|       type_fermeture        | boolean |                                 Type de fermeture                                 |   non    |
|     annee_installation      | integer |                               Année d'installation                                |   oui    |
|             ug              |  float  |    Coefficient de transmission thermique du vitrage connu et justifié en W/m²K    |   oui    |
|             uw              |  float  | Coefficient de transmission thermique de la menuiserie connu et justifié en W/m²K |   oui    |
|             ujn             |  float  |    Coefficient de transmission thermique de la baie connu et justifié en W/m²K    |   oui    |
|             sw              |  float  |              Proportion d'énergie solaire transmise par la baie en %              |   oui    |

### Position

|      propriété       |  type  |                         description                         | nullable |
| :------------------: | :----: | :---------------------------------------------------------: | :------: |
|       paroi_id       | string |              Identifiant de la paroi associée               |   oui    |
| local_non_chauffe_id | string |          Identifiant du local non chauffé associé           |   oui    |
|       surface        | float  |               Surface totale de la baie en m²               |   non    |
|     mitoyennete      |  enum  |                   Mitoyenneté de la baie                    |   non    |
|     inclinaison      | float  | Inclinaison de la baie par rapport à l'horizontale en angle |   non    |
|     orientation      | float  |     Orientation de la baie par rapport au nord en angle     |   oui    |

### Vitrage

|    propriété    | type  |           description            | nullable |
| :-------------: | :---: | :------------------------------: | :------: |
|  type_vitrage   | enum  |         Type de vitrage          |   oui    |
| nature_gaz_lame | enum  |     Nature de la lame d'air      |   oui    |
| epaisseur_lame  | float | Epaisseur de la lame d'air en mm |   oui    |

### Survitrage

|    propriété    | type  |           description            | nullable |
| :-------------: | :---: | :------------------------------: | :------: |
| type_survitrage | enum  |        Type de survitrage        |   oui    |
| epaisseur_lame  | float | Epaisseur de la lame d'air en mm |   oui    |

### Menuiserie

|            propriété            |  type   |               description               | nullable |
| :-----------------------------: | :-----: | :-------------------------------------: | :------: |
|         largeur_dormant         |  float  |        Largeur du dormant en mm         |   oui    |
|         presence_joint          | boolean |    Présence d'un joint d'étanchéité     |   oui    |
|    presence_retour_isolation    | boolean |    Présence d'un retour d'isolation     |   oui    |
| presence_rupteur_pont_thermique | boolean | Présence d'un rupteur de pont thermique |   oui    |

### Double fenêtre

| propriété | type  |                                    description                                    | nullable |
| :-------: | :---: | :-------------------------------------------------------------------------------: | :------: |
| type_baie | enum  |                                   Type de baie                                    |   non    |
| type_pose | enum  |                                   Type de pose                                    |   non    |
| materiau  | enum  |                                Matériau de la baie                                |   oui    |
|    ug     | float |    Coefficient de transmission thermique du vitrage connu et justifié en W/m²K    |   oui    |
|    uw     | float | Coefficient de transmission thermique de la menuiserie connu et justifié en W/m²K |   oui    |
|    sw     | float |              Proportion d'énergie solaire transmise par la baie en %              |   oui    |

## Statut

- [x] Investigation
- [ ] Concertation
- [ ] Déploiement
