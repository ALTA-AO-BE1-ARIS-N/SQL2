-- Insert 10 data untuk tabel User
INSERT INTO User (name, email) VALUES
('Slamet saridi', 'Slamet_saridi@SQL.com'),
('Mukidi siji', 'Mukidi.siji@SQL.com'),
('John Jono', 'John_Jono@SQL.com'),
('Pariyono', 'Pariyono4365@SQL.com'),
('David Jebles', 'David_Jebles@SQL.com'),
('Phatonah Kim', 'Phatonah.Kim@SQL.com'),
('Suradi Yono', 'Suradi.Yono@SQL.com'),
('Gombloh', 'Gombloh906535@SQL.com'),
('Mario Juki', 'Mario_Juki@SQL.com'),
('Jenifer Sifa', 'Jenifer.Sifa@SQL.com');

-- Insert 10 data untuk tabel Film
INSERT INTO Film (title, release_date) VALUES
('Kuntilanak', '2023-01-15'),
('Azab', '2002-02-20'),
('Kepepet', '2003-03-10'),
('Merapi', '2004-04-25'),
('Konjuring', '2005-05-12'),
('Toko Sebelah', '2006-06-08'),
('Yang Terlantar', '2007-07-22'),
('Mukidi Munggah Kaji', '2008-08-05'),
('Gerilya', '2009-09-18'),
('Dongeng Bocah Z', '2010-10-30');

-- Insert 10 data untuk tabel Category
INSERT INTO Category (name) VALUES
('Action'),
('Drama'),
('Comedy'),
('Thriller'),
('Fantasy'),
('Horror'),
('Romance'),
('Mystery'),
('Sci-Fi'),
('Adventure');

-- Insert 10 data untuk tabel Artis
INSERT INTO Artis (name, birth_date) VALUES
('Yolla Yulia', '1990-01-10'),
('Edy Oke', '1985-03-20'),
('Mark Sore', '1982-06-05'),
('John Wae', '1978-09-15'),
('Supri Wingi', '1987-11-30'),
('Ariel Naon', '1992-04-12'),
('Sari Buah', '1989-07-25'),
('Maikhel Sardy', '1995-12-08'),
('Sugi Christian', '1993-02-22'),
('Bang Mus', '1984-08-18');

-- Insert 30 data untuk tabel daftar_nonton (Keterangan: F= film, U= user)
INSERT INTO daftar_nonton (film_id, user_id, tgl_tonton) 
SELECT 
  F.id AS film_id,
  U.id AS user_id,
  DATE_ADD('2023-01-01', INTERVAL (F.id * U.id) DAY) AS tgl_tonton
FROM 
  Film F, User U
LIMIT 30;

-- Insert 30 data untuk tabel category_film (Keterangan: F= film, C= category)
INSERT INTO category_film (film_id, category_id)
SELECT 
  F.id AS film_id,
  C.id AS category_id
FROM 
  Film F, Category C
LIMIT 30;

-- Insert 30 data untuk tabel cast (Keterangan: F= film, A= Artist)
SELECT 
  F.id AS film_id,
  A.id AS artist_id,
  CONCAT('Role ', F.id, '-', A.id) AS role
FROM 
  Film F, Artis A
LIMIT 30;