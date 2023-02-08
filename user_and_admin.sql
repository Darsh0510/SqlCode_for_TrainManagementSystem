select * from user;

CREATE TABLE user (
	Username VARCHAR(20) PRIMARY KEY,
    password VARCHAR(20) UNIQUE
);

INSERT INTO user VALUES ('Darshan','darshan2002');
INSERT INTO user VALUES ('Sivakesh','sivakesh2003');
INSERT INTO user VALUES ('Mohit','mohit2002');
INSERT INTO user VALUES ('Bharat','bharat2002');
INSERT INTO user VALUES ('Mohan','mohan2002');

CREATE TABLE Admin (
    Username VARCHAR(20) PRIMARY KEY,
    FOREIGN KEY(Username) REFERENCES user(Username)
);

select * from Admin;

INSERT INTO Admin VALUES ('Darshan');

