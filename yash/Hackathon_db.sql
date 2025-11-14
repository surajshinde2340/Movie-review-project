//shares
Create table shares( review_id int, user_id int ,PRIMARY KEY(review_id,user_id),FOREIGN KEY (review_id) REFERENCES reviews(id), FOREIGN KEY (user_id) REFERENCES users(id));

//users
Create table users(id int PRIMARY KEY NOT NULL,first_name text,last_name text,email varchar(255) UNIQUE KEY,password text,mobile text,birth DATE);

//reviews
Create table reviews(id int PRIMARY KEY NOT NULL,movie_id int,review int,rating int,user_id int,modified timestamp,FOREIGN KEY (user_id) REFERENCES users(id));

//movies
Create table movies(id int PRIMARY KEY NOT NULL,title text,release_date DATE);