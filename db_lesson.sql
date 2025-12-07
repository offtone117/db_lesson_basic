create table departments(
department_id primary key int unsigned not null auto_increment,
name varchar(20) not null,
created_at timestamp current_timestamp,
updated_at timestamp current_timestamp on updeate current_timestamp
);
