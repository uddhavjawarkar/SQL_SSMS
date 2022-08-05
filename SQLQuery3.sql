alter table trainer add email varchar(25);
alter table trainer drop column email;
alter table trainer drop constraint CK__trainer__exper__36B12243;
alter table trainer alter column exper bigint;

alter table trainer drop constraint [PK__trainer__DC105B0F0C92CE13];
