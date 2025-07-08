<div align="center">
    <img width="auto" height="180" src="https://raw.githubusercontent.com/dpe-audit/.github/refs/heads/main/assets/logo.svg" alt="DPE-Audit">
</div>
<br/>
<p align="center">
	<a href="https://github.com/dpe-audit">
		Le projet
	</a>&nbsp;&nbsp;&nbsp;
	<a href="https://github.com/dpe-audit/opendata">
		Données ouvertes
	</a>&nbsp;&nbsp;&nbsp;
	<a href="https://github.com/dpe-audit/documentation">
		Documentation
	</a>&nbsp;&nbsp;&nbsp;
	<a href="https://github.com/dpe-audit/api">
		API
	</a>&nbsp;&nbsp;&nbsp;
	<a href="https://github.com/dpe-audit/migration">
		Migration
	</a>
</p>
<br/>

# DPE-Audit

Un projet de refonte de l'observatoire DPE-Audit pour améliorer la fiabilité les données des Diagnostics de Performance Energétique et des Audits énergétiques réglementaires.

## 🚀 Quoi ?

- Un standard de données publiques au format « JSON Schema » qui décrit la manière dont est modélisée un bâtiment pour évaluer sa performance énergétique. Ce standard permet également de valider la cohérence des données d'entrée transmises dans le cadre d'un Diagnostic de Performance Energétique ou d'un Audit réglementaire.

- Un moteur de calcul 3CL-DPE corrigé des erreurs de la méthode officielle.

- Une API pour transmettre les données d'entrée du DPE à l'observatoire et restituer les données calculées.

## 💬 Pourquoi ?

La fiabilité des données des Diagnostics de Performance Energétique et des Audits réglementaires est un enjeu central pour le pilotage des politiques publiques de rénovation énergétique et l'accompagnement des ménages.

La donnée DPE-Audit peut être décomposée en deux parties : les données d'entrée renseignées par les diagnostiqueurs et auditeurs, utilisées pour calculer les données de sortie à l'aide d'une méthode de calcul officiel - par exemple la méthode « 3CL-DPE » pour les logements existants.

Ces données sont transmises par l'intermédiaire de logiciels agréés par l'Etat, à un observatoire public – l'observatoire DPE-Audit – pour alimenter un open data de la performance énergétique des bâtiments.

La production des données de sortie est ainsi déléguée au marché sous contrôle de l'Etat. Or pour que ce contrôle soit efficace, il est nécessaire de pouvoir vérifier l'exactitude des données calculées, et donc de disposer d'un moteur de calcul public.

Un tel outil n'existe pas pour le moment. Les données publiques DPE-Audit sont par conséquent supposées fiables, une nuance incompatible avec les ambitions énergie-climat de la France.

## 🤝 Pour et avec qui ?

- Auditeurs énergétiques
- Diagnostiqueurs
- Editeurs de logiciels
- Observatoire DPE-Audit

## 🚀 Comment ?

- [Phase 1 - Définition d'un nouveau standard d'échange de données.](../modele)

- [Phase 2 - Mise à jour de la méthode 3CL-DPE.](../methode)

- [Phase 3 - Développement du moteur de calcul 3CL-DPE.](https://github.com/dpe-audit/api)

- [Phase 4 - Migration des données de l'observatoire DPE-Audit vers le nouveau modèle de données.](https://github.com/dpe-audit/migration)

## 🧩 Ressources

- [Observatoire DPE-Audit](https://observatoire-dpe-audit.ademe.fr/)
- [Observatoire DPE-Audit - Gitlab](https://gitlab.com/observatoire-dpe/observatoire-dpe)
- [Référentiel National des Bâtiments](https://rnb.beta.gouv.fr/)
- [Base Adresse Nationale](https://adresse.data.gouv.fr/)
- [data.gouv.fr](https://data.gouv.fr/)

## ❣️ Contribuer

Merci de consacrer de votre temps au développement de ce projet.

Nous vous invitons à prendre connaissance du [Code de conduite](../CODE_OF_CONDUCT.md).

Pour contribuer :

- Vous pouvez échanger avec la communauté directement depuis l'onglet Discussions.

- Vous pouvez proposer vos suggestions, améliorations ou correctifs depuis l'onglet Issues.

- Vous pouvez ouvrir une pull request pour apporter une modification au projet

Merci beaucoup !
