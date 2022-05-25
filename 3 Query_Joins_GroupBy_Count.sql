use music;

-- To show albums with ID 7
select *from band where name = 'Rammstein' or name = 'Korn'; 

-- inner joins to show band, album song and year
select b.name as band, a.name as album, s.name as song, a.album_year as year
from band as b
inner join album as a on b.id = a.created_by
inner join song as s on a.id = s.album_id;

-- inner joins to show only Draconian band data
select b.name as band, a.name as album, s.name as song, a.album_year as year
from band as b
inner join album as a on b.id = a.created_by
inner join song as s on a.id = s.album_id
where b.name = 'Draconian';

-- count songs per band
select count(s.id) as total_song, b.name as band
from band as b
inner join album as a on b.id = a.created_by
inner join song as s on a.id = s.album_id
group by b.id;

-- count albums per band
select count(b.id) as total_album, b.name as band
from band as b
inner join album as a on b.id = a.created_by
group by a.created_by;

-- show band with more than 15 song added
select count(s.id) as total_song, b.name as band
from band as b
inner join album as a on b.id = a.created_by
inner join song as s on a.id = s.album_id
group by b.id
having count(s.id) > 15;

-- show band who has more than 3 albums
select count(b.id) as total_album, b.name as band
from band as b
inner join album as a on b.id = a.created_by
group by a.created_by
having count(b.id) > 3;
