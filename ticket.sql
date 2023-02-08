CREATE TABLE Ticket (
	Ticket_id INT auto_increment PRIMARY KEY,
    CustomerName VARCHAR(20) NOT NULL,
    TrainNumber VARCHAR(5) NOT NULL,
    TrainName VARCHAR(50) NOT NULL,
    SourceStation VARCHAR(50) NOT NULL,
    DestinationStation VARCHAR(50) NOT NULL,
    ArrivalTime TIME NOT NULL,
    DepartureTime TIME NOT NULL,
    SeatNumber INT NOT NULL,
    price FLOAT(6,2),
    FOREIGN KEY (TrainNumber) REFERENCES Train(TrainNumber)
);