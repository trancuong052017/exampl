use toeiconline;

ALTER TABLE user MODIFY COLUMN name VARCHAR(255) NOT NULL;
ALTER TABLE user MODIFY COLUMN password VARCHAR(255) NOT NULL;
//ALTER TABLE user MODIFY COLUMN roleid BIGINT(20) NOT NULL;

//alter table user add column acce int(10);
alter table user add column roleid bigint;
alter table user add constraint fk_user_role foreign key(roleid) references role(roleid) ;