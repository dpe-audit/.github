# DPE-Audit Schéma - Enveloppe - Local non chauffé

## Organisation

- [local_non_chauffe.schema.yaml](./local_non_chauffe.schema.yaml): Schéma de données d'un local non chauffé
- [local_non_chauffe.examples.yaml](./local_non_chauffe.examples.yaml): Exemples de données d'un local non chauffé
- [/baie](./baie/README.md): Sous schéma de données d'une baie
- [/paroi](./paroi/README.md): Sous schéma de données d'une paroi

## Dictionnaire des données

### Général

|  propriété  |  type  |                 description                  | nullable |
| :---------: | :----: | :------------------------------------------: | :------: |
|     id      | string | Identifiant unique du local non chauffé UUID |   non    |
| description | string |  Description du local non chauffé au format markdown  |   non    |
|    type     |  enum  |          Type de local non chauffé           |   non    |

## Statut

- [x] Investigation
- [ ] Concertation
- [ ] Déploiement
