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

# DPE-Audit - Données ouvertes

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
