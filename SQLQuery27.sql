use PB3;
create table hotels
(hotelid int,hotelname varchar(20));
alter table hotels add city varchar(25);
alter table hotels add rating int ;
alter table hotels drop column rating;
--to change datatype
alter table hotels alter column rating float;
select *from hotels;

alter table hotels
alter column hotelid int not null 
alter table hotels
add primary key (hotelid);