DROP TABLE manufacturer;

CREATE TABLE manufacturer (
  id SERIAL PRIMARY KEY,
  name VARCHAR (255),
  type VARCHAR (255),
  active VARCHAR (255)
);
