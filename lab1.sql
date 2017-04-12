													ЗАДАНИЕ 1
CREATE TABLE t_Measure (
  id_measure INT NOT NULL,
  name VARCHAR2(4) NOT NULL,
  CONSTRAINT pk_measure PRIMARY KEY (id_measure)
  )


CREATE TABLE t_Material (
  id_material INT NOT NULL,
  name VARCHAR2(100) NOT NULL,
  id_measure INT NOT NULL,
  CONSTRAINT pk_material PRIMARY KEY (id_material),
  CONSTRAINT fk_material_measure FOREIGN KEY (id_measure) REFERENCES t_Measure(id_measure)
  )


CREATE TABLE t_Inprice (
  id_material INT NOT NULL,
  price_date DATE NOT NULL,
  price NUMBER(10,2) CHECK (price>=0),
  CONSTRAINT fk_inprice_material FOREIGN KEY (id_material) REFERENCES t_Material(id_material) ON DELETE CASCADE
  )


CREATE TABLE t_Employer (
  id_employer INT NOT NULL,
  surname NVARCHAR2(10) NOT NULL,
  name NVARCHAR2(10) NOT NULL,
  father_name NVARCHAR2(10) NOT NULL,
  CONSTRAINT pk_employer PRIMARY KEY (id_employer)
  )


CREATE TABLE t_Section (
  id_section INT NOT NULL,
  name NVARCHAR2(10) NOT NULL,
  id_employer INT NOT NULL,
  CONSTRAINT pk_section PRIMARY KEY (id_section),
  CONSTRAINT fk_employer FOREIGN KEY (id_employer) REFERENCES t_Employer(id_employer) ON DELETE CASCADE
  )


CREATE TABLE t_Caterer (
  id_caterer INT NOT NULL,
  name NVARCHAR2(20) NOT NULL,
  adress NVARCHAR2(30) NOT NULL,
  phone NUMBER(11) NOT NULL,
  fax NUMBER(11) NOT NULL,
  CONSTRAINT pk_caterer PRIMARY KEY (id_caterer)
  )


CREATE TABLE t_Store (
  id_store INT NOT NULL,
  name NVARCHAR2(20) NOT NULL,
  CONSTRAINT pk_store PRIMARY KEY (id_store)
  )


CREATE TABLE t_Supply (
  id_supply INT NOT NULL,
  id_caterer INT NOT NULL,
  id_material INT NOT NULL,
  id_store INT NOT NULL,
  supply_date DATE NOT NULL,
  volume NUMBER(5) NOT NULL,
  CONSTRAINT pk_supply PRIMARY KEY (id_supply),
  CONSTRAINT fk_caterer_caterer FOREIGN KEY (id_caterer) REFERENCES t_Caterer(id_caterer) ON DELETE CASCADE,
  CONSTRAINT fk_material_material FOREIGN KEY (id_material) REFERENCES t_material(id_material) ON DELETE CASCADE,
  CONSTRAINT fk_store_store FOREIGN KEY (id_store) REFERENCES t_Store(id_store) ON DELETE CASCADE
  )


CREATE TABLE t_Surplus (
  id_material INT NOT NULL,
  id_store INT NOT NULL,
  volume INT NOT NULL,
  CONSTRAINT fk_surplus_material FOREIGN KEY (id_material) REFERENCES t_Material(id_material) ON DELETE CASCADE,
  CONSTRAINT fk_surplus_store FOREIGN KEY (id_store) REFERENCES t_Store(id_store) ON DELETE CASCADE
  )


CREATE TABLE t_Deliver (
  id_deliver INT NOT NULL,
  id_section INT NOT NULL,
  id_material INT NOT NULL,
  id_store INT NOT NULL,
  deliver_date DATE NOT NULL,
  CONSTRAINT pk_deliver PRIMARY KEY (id_deliver),
  CONSTRAINT fk_deliver_section FOREIGN KEY (id_section) REFERENCES t_Section(id_section) ON DELETE CASCADE,
  CONSTRAINT fk_deliver_material FOREIGN KEY (id_material) REFERENCES t_Material(id_material) ON DELETE CASCADE,
  CONSTRAINT fk_deliver_store FOREIGN KEY (id_store) REFERENCES t_Store(id_store) ON DELETE CASCADE
  )  

													ЗАДАНИЕ 2
ALTER TABLE t_Caterer 
  DROP COLUMN adress;
ALTER TABLE t_Caterer
  ADD (legal_adress NVARCHAR2(20) NOT NULL,
      physical_adress NVARCHAR2(20) NOT NULL,
      email NVARCHAR2(20) NOT NULL);
  													
  													ЗАДАНИЕ 3
ALTER TABLE t_Inprice 
  ADD CONSTRAINT pk_inprice PRIMARY KEY (id_material, price_date)

  													ЗАДАНИЕ 4
CREATE TABLE t_group (
  id_group INT NOT NULL,
  name NVARCHAR2(10) NOT NULL,
  CONSTRAINT pk_group PRIMARY KEY (id_group)
  )
ALTER TABLE t_Material
  ADD (id_group INT NOT NULL, CONSTRAINT fk_material_group FOREIGN KEY (id_group) REFERENCES t_group(id_group) ON DELETE SET NULL
  )

  													ЗАДАНИЕ 5
ALTER TABLE t_Employer 
  ADD sex CHAR(1) DEFAULT 'M' CHECK(sex IN ('M', 'W'))
  ADD berthdate DATE
  ADD marriage NVARCHAR2(10)
ALTER TABLE t_Surplus
  ADD store_date DATE
  ADD CONSTRAINT pk_surplus PRIMARY KEY (id_store, id_material)