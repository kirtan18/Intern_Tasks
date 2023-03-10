
CREATE TABLE users(
                   user_id SERIAL PRIMARY KEY NOT NULL,
	               name VARCHAR(255) NOT NULL,
	               email VARCHAR(255)  NOT NULL,
	               age NUMERIC NOT NULL ,
	               contact VARCHAR(20) NOT NULL,
	               gender VARCHAR(10) CHECK (gender IN ('male', 'female', 'other')),
				   birthdate DATE NOT NULL,
				   city VARCHAR(255),
	               unique(email)	              
);

INSERT INTO users(name,email,age,contact,gender,birthdate,city) values
                          ('Tanmay', 'tanmay@gmail.com', 20, 1234567891, 'male', '2023-02-23', 'Ahmedabad'),
				          ('Sami', 'sami@gmail.com', 25, 8844559910, 'female', '2023-02-22', 'Gandhinagar'),
					      ('Mohan', 'mohan@gmail.com', 30, 9998887772, 'male', '2023-02-21', 'Pune'),
					      ('Rushi', 'rushi@gmail.com', 35, 4455667788, 'male', '2023-02-20', 'Bengluru');



CREATE TABLE skills(
                      skill_id INTEGER PRIMARY KEY NOT NULL,
	                  skill_name VARCHAR(255) NOT NULL
);	
 
INSERT INTO skills VALUES(101,'HTML'),(102,'CSS'),(103,'JS'),(104,'NODEJS'),(105,'EXPRESSJS'),(106,'MONGODB');


CREATE TABLE userSkills(
                        userskill_id SERIAL PRIMARY KEY NOT NULL,
	                    user_id INTEGER NOT NULL,
	                    skill_id INTEGER NOT NULL,
	                    FOREIGN KEY (user_id) REFERENCES users(user_id),
	                    FOREIGN KEY (skill_id) REFERENCES skills(skill_id)
);

INSERT INTO userSkills(user_id,skill_id) VALUES(1,101),(1,102),(1,103),(2,101),(2,103),(3,101),(3,104),(3,105),(4,101),(4,106),(4,105);

