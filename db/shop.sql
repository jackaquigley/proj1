DROP TABLE jewellery;
DROP TABLE manufacturer;

CREATE TABLE manufacturer (
  id SERIAL PRIMARY KEY,
  name VARCHAR (255),
  type VARCHAR (255),
  active VARCHAR (255)
);

CREATE TABLE jewellery (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  suitable_for_first BOOLEAN,
  type VARCHAR(255),
  price FLOAT,
  size VARCHAR(255),
  quantity INT
);
