DROP TABLE manufacturer;
DROP TABLE jewellery;

CREATE TABLE manufacturer (
  id SERIAL PRIMARY KEY,
  name VARCHAR (255),
  type VARCHAR (255),
  active VARCHAR (255)
);

CREATE TABLE jewellery (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  suitable_for_first VARCHAR(255),
  type VARCHAR(255),
  price INT,
  size VARCHAR(255),
  quantity INT
);
