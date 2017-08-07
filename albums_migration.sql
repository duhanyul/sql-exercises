use codeup_test_db;
create table albums(
  id int unsigned not null auto_increment,
  artist varchar(150) default 'none',
  name varchar(150) not null,
  release_date year(4),
  sales float(4,2),
  genre varchar(25),
  primary key (id)
);
