create table user
(
	username 			varchar(50),
	name 				varchar(100),
	password			varchar(50) NOT NULL,
	email				varchar(200),
	ph_no				varchar(10),

	primary key (username)
);

create table tree
(
	tree_id				varchar(50),
	username			varchar(50),
	latitude			decimal(10,8) NOT NULL,
	longitude			decimal(11,8) NOT NULL,
	planted_on			date,
	species				varchar(100),

	primary key (tree_id),
	foreign key (username) references user(username) on delete cascade,
);

create table review
(
	tree_id				varchar(50),
	review_no			numeric(5,0),
	review_text			text,
	reviewed_by 		varchar(50),
	reviewed_on			date,
	title				varchar(100),

	primary key (tree_id, review_no),
	foreign key (tree_id) references tree(tree_id) on delete cascade,
	foreign key (reviewed_by) references user(username) on delete cascade				
);

create table directory
(
	tree_id					varchar(50),
	directory_id			numeric(5,0),
	uploaded_by				varchar(50),
	clicked_on				date,

	primary key (tree_id, directory_id),
	foreign key (tree_id) references tree(tree_id) on delete cascade,
	foreign key (uploaded_by) references user(username) on delete cascade					
);

create table image
(
	tree_id					varchar(50),
	directory_id			numeric(5,0),
	image_url				varchar(50),

	primary key (image_url),
	foreign key (tree_id, directory_id) references directory(tree_id, directory_id) on delete cascade
);

create table adopts
(
	tree_id 				varchar(50),
	adopted_by				varchar(50),
	adopted_on				date,

	primary key (tree_id, adopted_by),
	foreign key (tree_id) references tree(tree_id) on delete cascade,
	foreign key (adopted_by) references user(username) on delete cascade
);

create table devices
(
	username 				varchar(50),
	token 					varchar(400),

	primary key (username, token),
	foreign key (username) references user(username) on delete cascade
);