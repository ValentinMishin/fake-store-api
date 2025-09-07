create table frating (
    id bigint generated always as identity primary key,
    rate double precision not null check (rate >= 0 AND rate <= 10),
    count integer not null check (count >= 0)
);

create table fproduct (
	id bigint generated always as identity primary key,
	title varchar(50) not null,
	price decimal(12,2) not null,
	description varchar(255) not null,
	category varchar(255) not null,
	rating_id bigint not null unique,
	foreign key (rating_id) references frating(id) on delete cascade
);