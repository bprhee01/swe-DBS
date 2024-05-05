CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    reward INT DEFAULT 0
);

CREATE TABLE ReportLostItem (
    report_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    item VARCHAR(255) NOT NULL,
    color VARCHAR(255),
    contents VARCHAR(255),
    manufacturer VARCHAR(255),
    location_of_discovery VARCHAR(255),
    time_of_discovery DATETIME,
    create_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE FindingLostItems (
    find_id INT AUTO_INCREMENT PRIMARY KEY,
    item VARCHAR(255) NOT NULL,
    color VARCHAR(255),
    contents VARCHAR(255),
    manufacturer VARCHAR(255),
    characteristics_of_the_item VARCHAR(255),
    create_date DATETIME DEFAULT CURRENT_TIMESTAMP
);
