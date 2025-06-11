# Schéma de données DPE-Audit

Une proposition alternative d'un standard d'échange de données des Diagnostics de Performance Energétique et Audits énergétique.

> [!IMPORTANT]
> Ce projet est actuellement en cours de développement.

## Conventions de nommage

- les noms des propriétés sont écrits en snake_case - ex `annee_construction` ou `type_isolation`.
- les définitions internes sont écrites en camelCase - ex `#/$defs/localNonChauffe`
- les énumérations sont écrites en snake_case - ex `iti` ou `brique_pleine_simple`

## Traitement des données requises et inconnues

Par défaut, on considère que **toutes les propriétés décrites par un schéma applicable `DOIVENT` être définies**.

Un schéma **PEUT** décrire une propriété acceptant une valeur `null` indiquant une donnée d'entrée inconnue du producteur. Ces valeurs `DOIVENT` être définies par le producteur. Ces schémas `DOIVENT` être complétés d'une valeur par défaut `default: null`.
