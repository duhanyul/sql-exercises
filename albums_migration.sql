use codeup_test_db;
drop table if exists albums;

create table if not exists albums(
  id int unsigned not null auto_increment,
  artist varchar(150) default 'none',
  name varchar(150) not null,
  release_date year(4),
  sales float(4,2),
  genre varchar(128),
  primary key (id)
);
