--Service table creation
CREATE TABLE "service"(
    "service_id" SERIAL NOT NULL,
    "car_id" INTEGER NOT NULL,
    "mechanic_id" INTEGER NOT NULL,
    "invoice_id" INTEGER NOT NULL,
    "servicing_date" DATE NOT NULL
);
ALTER TABLE
    "service" ADD PRIMARY KEY("service_id");
   
--Salesperson table creation
CREATE TABLE "salesperson"(
    "salesperson_id" SERIAL NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "total_sales" INTEGER NULL,
    "hire_date" DATE NULL
);
ALTER TABLE
    "salesperson" ADD PRIMARY KEY("salesperson_id");
   
--Mechanic table creation
CREATE TABLE "mechanic"(
    "mechanic_id" SERIAL NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "hire_date" DATE NULL,
    "cars_serviced" INTEGER NULL
);
ALTER TABLE
    "mechanic" ADD PRIMARY KEY("mechanic_id");
   
--Car table creation   
CREATE TABLE "car"(
    "car_id" SERIAL NOT NULL,
    "customer_id" BIGINT NOT NULL,
    "make" VARCHAR(25) NULL,
    "model" VARCHAR(25) NULL,
    "year" INTEGER NULL
);
ALTER TABLE
    "car" ADD PRIMARY KEY("car_id");
   
--Invoice table creation   
CREATE TABLE "invoice"(
    "invoice_id" SERIAL NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "car_id" INTEGER NOT NULL,
    "salesperson_id" INTEGER NULL,
    "amount" DECIMAL(8, 2) NOT NULL,
    "payment_date" DATE NULL,
    "invoice_type" VARCHAR(50) NOT NULL
);
ALTER TABLE
    "invoice" ADD PRIMARY KEY("invoice_id");
--Customer table creation
CREATE TABLE "customer"(
    "customer_id" SERIAL NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL
);
ALTER TABLE
    "customer" ADD PRIMARY KEY("customer_id");
   
--Invoice foreign key references
ALTER TABLE
    "invoice" ADD CONSTRAINT "invoice_salesperson_id_foreign" FOREIGN KEY("salesperson_id") REFERENCES "salesperson"("salesperson_id");
ALTER TABLE
    "invoice" ADD CONSTRAINT "invoice_customer_id_foreign" FOREIGN KEY("customer_id") REFERENCES "customer"("customer_id");
ALTER TABLE
    "invoice" ADD CONSTRAINT "invoice_car_id_foreign" FOREIGN KEY("car_id") REFERENCES "car"("car_id");   

--Service foreign key references
ALTER TABLE
    "service" ADD CONSTRAINT "service_car_id_foreign" FOREIGN KEY("car_id") REFERENCES "car"("car_id");
ALTER TABLE
    "service" ADD CONSTRAINT "service_mechanic_id_foreign" FOREIGN KEY("mechanic_id") REFERENCES "mechanic"("mechanic_id");
ALTER TABLE
    "service" ADD CONSTRAINT "service_invoice_id_foreign" FOREIGN KEY("invoice_id") REFERENCES "invoice"("invoice_id");

--Car foreign key references   
ALTER TABLE
    "car" ADD CONSTRAINT "car_customer_id_foreign" FOREIGN KEY("customer_id") REFERENCES "customer"("customer_id");
    
   