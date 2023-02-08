select * from Takes;
select * from Route;
select * from Train;
select * from Station;

/*query to find train details if source and destination is give*/
select distinct t.TrainNumber,t.TrainName,1stClassPrice,2ndClassPrice,SleeperPrice,capacity
From Train t
JOIN Takes r ON t.TrainNumber = r.TrainNumber
JOIN Takes r1 ON t.TrainNumber = r1.TrainNumber
JOIN  Route ro ON r.RouteNum = ro.RouteNum
JOIN  Route ro1 ON r1.RouteNum = ro1.RouteNum
where ro.Location = 'Bhopal' and ro1.Location = 'Gwalior' and (ro.Duration<ro1.Duration)


