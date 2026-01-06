-- useres 
CREATE TABLE users(
	user_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    city VARCHAR(50),
    signup_date DATE NOT NULL
);