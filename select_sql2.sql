-- code untuk memanggil data table film dan data category > 5
SELECT * FROM film;

SELECT * FROM category WHERE id > 5;

-- code untuk memanggil nama film dan nama categorynya
SELECT film.title AS film_name, category.name AS category_name
FROM film
JOIN category_film ON Film.id = category_film.film_id
JOIN category ON category_film.category_id = category.id;

-- code untuk memanggil nama artis dan film yang dibintangi oleh artis itu
SELECT artis.name AS artist_name, film.title AS film_name
FROM artis
JOIN cast ON artis.id = cast.artist_id
JOIN Film ON cast.film_id = Film.id;

-- code untuk memanggil nama film dan berapa kali film tersebut di tonton
SELECT film.title AS film_name, COUNT(daftar_nonton.id) AS num_views
FROM film
LEFT JOIN daftar_nonton ON Film.id = daftar_nonton.film_id
GROUP BY film.id, film.title;