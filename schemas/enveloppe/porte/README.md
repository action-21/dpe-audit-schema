# DPE-Audit Schéma - Enveloppe - Porte

## Organisation

- [porte.schema.yaml](./porte.schema.yaml): Schéma de données d'une porte
- [porte.examples.yaml](./porte.examples.yaml): Exemples de données d'une porte

## Règles de cohérence additionnelles

Si la propriété `position/paroi_id` est différente de `null`, sa valeur doit faire référence à une paroi existante de type `mur`, `plancher_bas` ou `plancher_haut`.

Si la propriété `position/local_non_chauffe_id` est différente de `null`, sa valeur doit faire référence à un local non chauffé existant.

## Statut

- [x] Investigation
- [ ] Concertation
- [ ] Déploiement
