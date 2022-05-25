use music;

-- insert bands
insert into band(name)
values
	('Trees of Eternity'),
    ('Tiamat');

select *from band;

-- insert album name, album_year and created by (Band ID)
insert into album(name,album_year,created_by)
values
	('Wildhoney','1994','8'),
    ('Clouds','2012','8');
    
select * from album where created_by = 8;

-- Insert song name and album id from table album where the song belong
insert into song(name,album_id)
values
	('Whatever That Hurts','27'),
    ('The Ar','27'),
    ('Gaia','27'),
    ('In a Dream','28'),
    ('Clouds','28'),
    ('The Sleeping beauty','28'),
    ('The Scapegoat','28');
    
select *from song;
