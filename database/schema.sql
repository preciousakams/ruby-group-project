/*
- create Genre table
- create Author table
- create Source table
- create Label table
*/
CREATE TABLE Genre(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(60) NOT NULL
);

CREATE TABLE Author(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL
);

CREATE TABLE Source(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(60) NOT NULL
);

CREATE TABLE Label(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  title VARCHAR(80) NOT NULL,
  color VARCHAR(20) NOT NULL
);

---------------------------------------------------------------------

-- create item table

CREATE TABLE item(
 id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
 genre_id INT,
 author_id INT,
 source_id INT,
 label_id INT,
 publish_date Date,
 archived BOOLEAN,
 FOREIGN KEY(genre_id) REFERENCES Genre(id) ON UPDATE CASCADE,
 FOREIGN KEY(author_id) REFERENCES Author(id) ON UPDATE CASCADE,
 FOREIGN KEY(source_id) REFERENCES Source(id) ON UPDATE CASCADE,
 FOREIGN KEY(label_id) REFERENCES Label(id) ON UPDATE CASCADE
);

---------------------------------------------------------------------

/*
- create Book table
- create MusicAlbum table
- create Movie table
- create Game table
*/

CREATE TABLE Book(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  publisher VARCHAR(80),
  cover_state VARCHAR(20),
  FOREIGN KEY (id) REFERENCES item (id) ON UPDATE CASCADE
);

CREATE TABLE MusicAlbum(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  on_spotify BOOLEAN NOT NULL,
  FOREIGN KEY(id) REFERENCES item(id) ON UPDATE CASCADE
);

CREATE TABLE Movie(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  silet BOOLEAN NOT NULL,
  FOREIGN KEY(id) REFERENCES item(id) ON UPDATE CASCADE
);

CREATE TABLE Game(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  last_played_at DATE,
	multiplayer BOOLEAN NOT NULL,
  FOREIGN KEY(id) REFERENCES item(id) ON UPDATE CASCADE
);