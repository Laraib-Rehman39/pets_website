
mysql -u root -p 

# Create a database named 'mydatabase'
CREATE DATABASE my_database;

# Use the newly created database
USE my_database;

# Create the 'categories' table
CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

# Create the 'images' table
CREATE TABLE images (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    path VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

# Create the 'users' table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

# Create the 'products' table
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2), 
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);


UPDATE products SET image_path = 'images/Golden_Retriever.jpg' WHERE name = 'Golden Retriever'; 
UPDATE products SET image_path = 'images/Bulldog.jpg' WHERE name = 'Bulldog'; UPDATE products SET image_path = 'images/labrador_retriever.jpg' WHERE name = 'Labrador Retriever'; 
UPDATE products SET image_path = 'images/Poodle.jpg' WHERE name = 'Poodle'; UPDATE products SET image_path = 'images/Beagle.jpg' WHERE name = 'Beagle'; UPDATE products SET image_path = 'images/German Shepherd.jpg' WHERE name = 'German Shepherd'; 
UPDATE products SET image_path = 'images/Chihuahua.jpg' WHERE name = 'Chihuahua'; 
UPDATE products SET image_path = 'images/Bulldog.jpg (2)' WHERE name = 'Bulldog'; UPDATE products SET image_path = 'images/Rottweiler.jpg' WHERE name = 'Rottweiler'; UPDATE products SET image_path = 'images/Boxer.jpg' WHERE name = 'Boxer';

UPDATE products SET image_path = 'images/siamese_cat.jpg' WHERE name = 'Siamese Cat'; 
UPDATE products SET image_path = 'images/persian_cat.jpg' WHERE name = 'Persian Cat'; 
UPDATE products SET image_path = 'images/maine_coon.jpg' WHERE name = 'Maine Coon'; 
UPDATE products SET image_path = 'images/bengal_cat.jpg' WHERE name = 'Bengal Cat'; UPDATE products SET image_path = 'images/scottish_fold.jpg' WHERE name = 'Scottish Fold'; 
UPDATE products SET image_path = 'images/abyssinian.jpg' WHERE name = 'Abyssinian'; UPDATE products SET image_path = 'images/sphynx_cat.jpg' WHERE name = 'Sphynx Cat'; 
UPDATE products SET image_path = 'images/ragdoll.jpg' WHERE name = 'Ragdoll'; UPDATE products SET image_path = 'images/russian_blue.jpg' WHERE name = 'Russian Blue'; 
UPDATE products SET image_path = 'images/british_shorthair.jpg' WHERE name = 'British Shorthair'; -- Insert 10 Parrots with image paths 

UPDATE products SET image_path = 'images/african_grey_parrot.jpg' WHERE name = 'African Grey Parrot'; 
UPDATE products SET image_path = 'images/macaw.jpg' WHERE name = 'Macaw'; 
UPDATE products SET image_path = 'images/cockatoo.jpg' WHERE name = 'Cockatoo'; UPDATE products SET image_path = 'images/budgerigar.jpg' WHERE name = 'Budgerigar'; UPDATE products SET image_path = 'images/lovebird.jpg' WHERE name = 'Lovebird'; UPDATE products SET image_path = 'images/conure.jpg' WHERE name = 'Conure'; UPDATE products SET image_path = 'images/cockatiel.jpg' WHERE name = 'Cockatiel'; UPDATE products SET image_path = 'images/parakeet.jpg' WHERE name = 'Parakeet'; UPDATE products SET image_path = 'images/eclectus_parrot.jpg' WHERE name = 'Eclectus Parrot'; 
UPDATE products SET image_path = 'images/amazon_parrot.jpg' WHERE name = 'Amazon Parrot';

INSERT INTO images (image_url, product_id) VALUES ('images/10.jpg', 26);
INSERT INTO images (image_url, product_id) VALUES ('images/11.jpg', 27);
INSERT INTO images (image_url, product_id) VALUES ('images/12.jpg', 28);
INSERT INTO images (image_url, product_id) VALUES ('images/13.jpg', 29);
INSERT INTO images (image_url, product_id) VALUES ('images/14.jpg', 30);
INSERT INTO images (image_url, product_id) VALUES ('images/15.jpg', 31);
INSERT INTO images (image_url, product_id) VALUES ('images/16.jpg (2)', 32);
INSERT INTO images (image_url, product_id) VALUES ('images/17.jpg', 33);
INSERT INTO images (image_url, product_id) VALUES ('images/18.jpg', 34);


INSERT INTO images (image_url, product_id) VALUES ('images/1.jpg', 35);
INSERT INTO images (image_url, product_id) VALUES ('images/2.jpg', 36);
INSERT INTO images (image_url, product_id) VALUES ('images/3.jpg', 37);
INSERT INTO images (image_url, product_id) VALUES ('images/4.jpg', 38);
INSERT INTO images (image_url, product_id) VALUES ('images/5.jpg', 39);
INSERT INTO images (image_url, product_id) VALUES ('images/6.jpg', 40);
INSERT INTO images (image_url, product_id) VALUES ('images/7.jpg', 41);
INSERT INTO images (image_url, product_id) VALUES ('images/8.jpg', 42);
INSERT INTO images (image_url, product_id) VALUES ('images/9.jpg', 43);
INSERT INTO images (image_url, product_id) VALUES ('images/10cr.jpg', 44);

INSERT INTO images (image_url, product_id) VALUES ('images/21.jpg', 45);
INSERT INTO images (image_url, product_id) VALUES ('images/22.jpg', 46);
INSERT INTO images (image_url, product_id) VALUES ('images/23.jpg', 47);
INSERT INTO images (image_url, product_id) VALUES ('images/24.jpg', 48);
INSERT INTO images (image_url, product_id) VALUES ('images/25.jpg', 49);
INSERT INTO images (image_url, product_id) VALUES ('images/26.jpg', 50);
INSERT INTO images (image_url, product_id) VALUES ('images/27.jpg', 51);
INSERT INTO images (image_url, product_id) VALUES ('images/28.jpg', 52);
INSERT INTO images (image_url, product_id) VALUES ('images/29.jpg', 53);
INSERT INTO images (image_url, product_id) VALUES ('images/30.jpg', 54);
