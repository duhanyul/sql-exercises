use codeup_test_db;

select name from albums where artist = 'Pink Floyd';

select name from albums where genre = 'Hard Rock';

select artist from albums where release_date < 1980;

select name from albums where release_date between 1970 and 1979;
