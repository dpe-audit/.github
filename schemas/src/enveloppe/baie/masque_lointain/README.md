# DPE-Audit Schéma - Enveloppe - Baie - Masque lointain

## Organisation

- [masque_lointain.schema.yaml](./masque_lointain.schema.yaml): Schéma de données d'un masque lointain
- [masque_lointain.examples.yaml](./masque_lointain.examples.yaml): Exemples de données d'un masque lointain

## Dictionnaire des données

### Général

|            propriété            |  type   |                    description                    | nullable |
| :-----------------------------: | :-----: | :-----------------------------------------------: | :------: |
|               id                | string  |    Identifiant unique du masque lointain UUID     |   non    |
|           description           | string  | Description du masque lointain au format markdown |   non    |
|           type_masque           |  enum   |                  Type de masque                   |   non    |
|      type_masque_lointain       |  enum   |              Type de masque lointain              |   non    |
|             hauteur             |  float  |              Hauteur du masque en °               |   non    |
|           orientation           |  float  |  Orientation du masque par rapport au nord en °   |   non    |

## Statut

- [x] Investigation
- [ ] Concertation
- [ ] Déploiement
