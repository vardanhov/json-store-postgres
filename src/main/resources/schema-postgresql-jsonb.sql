DROP TABLE employee;
DROP TABLE company;

CREATE TABLE company (
    id uuid not null,
    version timestamp not null,
    external_id varchar(255) not null,
    name varchar(255),
    company_address jsonb,
    tax_rel_state_code varchar(255),
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id uuid not null,
    version timestamp not null,
    company_id uuid not null,
    surname varchar(255) not null,
    given_name varchar(255),
    date_of_birth date,
    gender varchar(32),
    postal_address jsonb,
    tax_relevant_data jsonb,
    PRIMARY KEY (id)
);

ALTER TABLE company ADD CONSTRAINT constraint_company_unique_external_id UNIQUE (external_id);
ALTER TABLE employee ADD CONSTRAINT fk_company FOREIGN KEY (company_id) REFERENCES company;

ALTER TABLE company OWNER TO pmsjson;
ALTER TABLE employee OWNER TO pmsjson;