# DPE-Audit Schéma - Enveloppe - Baie - Masque proche

## Organisation

- [masque_proche.schema.yaml](./masque_proche.schema.yaml): Schéma de données d'un masque proche
- [masque_proche.examples.yaml](./masque_proche.examples.yaml): Exemples de données d'un masque proche

## Dictionnaire des données

### Général

|     propriété      |  type  |                   description                   | nullable |
| :----------------: | :----: | :---------------------------------------------: | :------: |
|         id         | string |    Identifiant unique du masque proche UUID     |   non    |
|    description     | string | Description du masque proche au format markdown |   non    |
|    type_masque     |  enum  |                 Type de masque                  |   non    |
| type_masque_proche |  enum  |              Type de masque proche              |   non    |
|     profondeur     | float  |            Profondeur du masque en m            |   oui    |

## Statut

- [x] Investigation
- [ ] Concertation
- [ ] Déploiement
