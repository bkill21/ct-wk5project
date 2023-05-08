--Insert command values left blank for neatness and ease of use for next insert

-- Inserting into "customer" table
INSERT INTO "customer"(
    "first_name",
    "last_name"
)VALUES(
    '', 
    ''
);

-- Inserting into "car" table
INSERT INTO "car"(
    "customer_id",
    "make",
    "model",
    "year"
)VALUES(
    '',
    '',
    '',
    ''
);

-- Inserting into "invoice" table
INSERT INTO "invoice" (
    "customer_id",
    "car_id",
    "salesperson_id",
    "amount",
    "payment_date", 
    "invoice_type"
)VALUES(
    '',
    '',
    '',
    '',
    '',
    ''
);

-- Inserting into "mechanic" table
INSERT INTO "mechanic"(
    "first_name",
    "last_name",
    "hire_date",
    "cars_serviced"
)VALUES(
    '',
    '',
    '',
    ''
);

-- Inserting into "salesperson" table
INSERT INTO "salesperson"(
    "first_name",
    "last_name",
    "total_sales",
    "hire_date"
)VALUES(
    '',
    '',
    '',
    ''
);

-- Inserting into "service" table
INSERT INTO "service"(
    "car_id",
    "mechanic_id",
    "invoice_id",
    "servicing_date"
)VALUES(
    '',
    '',
    '',
    ''
);
