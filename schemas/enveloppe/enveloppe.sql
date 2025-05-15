DROP TABLE IF EXISTS dpe_audit.enveloppe;

CREATE TYPE exposition as ENUM('exposition_simple', 'exposition_multiple');

CREATE TYPE inertie as ENUM('lourde', 'légère');

CREATE TABLE dpe_audit.enveloppe (
    id UUID PRIMARY KEY,
    exposition exposition NOT NULL,
    q4pa_conv FLOAT
);

CREATE TABLE dpe_audit.enveloppe_refend (
    id UUID PRIMARY KEY,
    enveloppe_id UUID NOT NULL,
    description TEXT NOT NULL,
    surface FLOAT NOT NULL,
    inertie inertie
    --FOREIGN KEY (enveloppe_id) REFERENCES dpe_audit.enveloppe(id)
);

CREATE TABLE dpe_audit.enveloppe_plancher_intermediaire (
    id UUID PRIMARY KEY,
    enveloppe_id UUID NOT NULL,
    description TEXT NOT NULL,
    surface FLOAT NOT NULL,
    inertie inertie
    --FOREIGN KEY (enveloppe_id) REFERENCES dpe_audit.enveloppe(id)
);