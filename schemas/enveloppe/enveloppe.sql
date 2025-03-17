DROP TABLE IF EXISTS dpe_audit.enveloppe;

CREATE TYPE exposition as ENUM('exposition_simple', 'exposition_multiple');

CREATE TYPE inertie as ENUM('lourde', 'légère');

CREATE TABLE dpe_audit.enveloppe (
    dpe_audit_id UUID PRIMARY KEY,
    exposition exposition NOT NULL,
    q4pa_conv FLOAT
    --FOREIGN KEY (dpe_audit_id) REFERENCES dpe_audit.audit(id)
);

CREATE TABLE dpe_audit.refend (
    id UUID PRIMARY KEY,
    dpe_audit_id UUID NOT NULL,
    description TEXT NOT NULL,
    surface FLOAT NOT NULL,
    inertie inertie
    --FOREIGN KEY (dpe_audit_id) REFERENCES dpe_audit.audit(id)
);

CREATE TABLE dpe_audit.plancher_intermediaire (
    id UUID PRIMARY KEY,
    dpe_audit_id UUID NOT NULL,
    description TEXT NOT NULL,
    surface FLOAT NOT NULL,
    inertie inertie
    --FOREIGN KEY (dpe_audit_id) REFERENCES dpe_audit.audit(id)
);