create table author
(authorId int primary key,
authorname varchar(30),
);
 
 create table book
 (bookid int primary key,
 bookname varchar(20),
 prize int,
 authorid int,
 constraint fkaid foreign key (authorid) references author (authorid));
 insert into author values(101,'B.G.Shirke');
 select*from  author;
  select*from  book;
