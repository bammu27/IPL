use ipl;

CREATE TABLE ground (
    groundId VARCHAR(10),
    gname VARCHAR(100),
    place VARCHAR(50),
    capacity INT,
    fitch VARCHAR(20),
    highestScore INT,
    primary key(groundId)
);

CREATE TABLE club (
    clubId VARCHAR(10) PRIMARY KEY,
    cname VARCHAR(100),
    owner VARCHAR(100),
    ipltrophies INT,
    headcoach VARCHAR(100)
);


CREATE TABLE player (
    playerId VARCHAR(10),
    name VARCHAR(100),
    nationality VARCHAR(50),
    age INT,
    clubId VARCHAR(10),
	PRIMARY KEY(playerId),
    FOREIGN KEY (clubId) REFERENCES club(clubId)
);


CREATE TABLE playerstat (
    pId VARCHAR(10) ,
    noMatches INT,
    noWickets INT,
    totalRuns INT,
    Centuries INT,
    halfCenturies INT,
    StrikeRate DECIMAL(5, 2),
    role VARCHAR(50),
    prize DECIMAL(10, 2),
    PRIMARY KEY(pId),
    FOREIGN KEY (pId) REFERENCES player(playerId)
);


CREATE TABLE matches (
    matchno VARCHAR(10) ,
    winningteam VARCHAR(10),
    losingteam VARCHAR(10),
    Date DATETIME,
    Score VARCHAR(20),
    groundid VARCHAR(10),
    PRIMARY KEY(matchno),
    FOREIGN KEY (groundid) REFERENCES ground(groundId)
);







INSERT INTO ground (groundId, gname, place, capacity, fitch, highestScore)
VALUES
    ('MACHID', 'M. A. Chidambaram Stadium, Chennai', 'Chennai', '50000', 'bolling', 246),
    ('ARUNST', 'Arun Jaitley Stadium in Delhi', 'Delhi', '42000', 'sporting', 225),
    ('MCHINN', 'M. Chinnaswamy Stadium, Bengaluru', 'Bengaluru', '40000', 'batting', 263),
    ('NAMODI', 'Narendra Modi Stadium in Ahmedabad', 'Ahmedabad', '110000', 'batting', 232),
    ('WANSTA', 'Wankhede Stadium in Mumbai', 'Mumbai', '33000', 'batting', 235),
    ('DYPSTA', 'D Y Patil Sports Stadium in Mumbai', 'Mumbai', '55000', 'sporting', 225),
    ('PCA', 'Punjab Cricket Association Stadium, Mohali', 'Mohali', '26000', 'batting', 230),
    ('SAWAIMS', 'Sawai Mansingh Stadium in Jaipur', 'Jaipur', '30000', 'bolling', 215),
    ('LUCST', 'Ekana', 'Lucknow', '50000', 'bolling', 196),
    ('RGICS', 'Rajiv Gandhi International Cricket Stadium, Hyderabad', 'Hyderabad', '55000', 'bolling', 209);



INSERT INTO club (clubId, cname, owner, ipltrophies, headcoach)
VALUES
    ('MI', 'Mumbai Indians', 'Mukesh Ambani', 5, 'Mark Boucher'),
    ('CSK', 'Chennai Super Kings', 'Chennai Super Kings Cricket Ltd.', 5, 'Stephen Fleming'),
    ('KKR', 'Kolkata Knight Riders', 'Red Chillies Entertainment', 2, 'Chandrakant Pandit'),
    ('RR', 'Rajasthan Royals', 'Manoj Badale', 1, 'Kumar Sangakkara'),
    ('SRH', 'Sunrisers Hyderabad', 'Sun TV Network', 1, 'Brian Lara'),
    ('RCB', 'Royal Challengers Bangalore', 'United Spirits', 6, 'Sanjay Bangar'),
    ('GT', 'Gujarat Titans', 'Adani Group', 0, 'Ashish Nehra'),
    ('LSG', 'Lucknow Super Giants', 'Sanjiv Goenka', 0, 'Andy Flower'),
    ('DC', 'Delhi Capitals', 'GMR Sports Pvt Ltd, JSW Sports Pvt Ltd', 0, 'Ricky Ponting'),
    ('PBKS', 'Punjab Kings', 'Preity Zinta, Ness Wadia, Mohit Burman, and others', 0, 'Trevor Bayliss');

-- player data 
-- Royal Challengers Bangalore (RCB)
INSERT INTO player (playerId, name, nationality, age, clubId)
VALUES
    ('RCB001FDP', 'Faf du Plessis', 'South African', 38, 'RCB'),
    ('RCB002FAL', 'Finn Allen', 'New Zealand', 23, 'RCB'),
    ('RCB003RPT', 'Rajat Patidar', 'Indian', 27, 'RCB'),
    ('RCB004VKO', 'Virat Kohli', 'Indian', 34, 'RCB'),
    ('RCB005ARW', 'Anuj Rawat', 'Indian', 21, 'RCB'),
    ('RCB006DKT', 'Dinesh Karthik', 'Indian', 37, 'RCB'),
    ('RCB007DWL', 'David Willey', 'English', 31, 'RCB'),
    ('RCB008GLM', 'Glenn Maxwell', 'Australian', 34, 'RCB'),
    ('RCB009HSP', 'Harshal Patel', 'Indian', 31, 'RCB'),
    ('RCB010MLR', 'Mahipal Lomror', 'Indian', 23, 'RCB'),
    ('RCB011SHA', 'Shahbaz Ahamad', 'Indian', 22, 'RCB'),
    ('RCB012SSP', 'Suyash S Prabhudessai', 'Indian', 23, 'RCB'),
    ('RCB013WHA', 'Wanindu Hasaranga', 'Sri Lankan', 24, 'RCB'),
    ('RCB014AKD', 'Akash Deep', 'Indian', 27, 'RCB'),
    ('RCB015JHZ', 'Josh Hazlewood', 'Australian', 31, 'RCB'),
    ('RCB016KRS', 'Karn Sharma', 'Indian', 34, 'RCB'),
    ('RCB017SKA', 'Siddharth Kaul', 'Indian', 31, 'RCB'),
    ('RCB018MSS', 'Mohammed Siraj', 'Indian', 27, 'RCB'),
    ('RCB019RST', 'Reece Topley', 'English', 28, 'RCB'),
    ('RCB020HMS', 'Himanshu Sharma', 'Indian', 25, 'RCB'),
    ('RCB021WJK', 'Will Jacks', 'English', 23, 'RCB'),
    ('RCB022RJK', 'Rajan Kumar', 'Indian', 26, 'RCB'),
    ('RCB023ASK', 'Avinash Singh', 'Indian', 28, 'RCB'),
    ('RCB024SYD', 'Sonu Yadav', 'Indian', 25, 'RCB'),
    ('RCB025MBH', 'Manoj Bhandage', 'Indian', 26, 'RCB')
;

INSERT INTO playerstat (pId, noMatches, noWickets, totalRuns, Centuries, halfCenturies, StrikeRate, role, prize)
VALUES
  ('RCB001FDP', 40, 75, 1200, 3, 10, 125.75, 'Batsman', '10 crore'),
  ('RCB002FAL', 23, 10, 890, 1, 7, 140.25, 'Batsman', '50.00 Lakhs'),
  ('RCB003RPT', 27, 23, 650, 0, 5, 110.00, 'Batsman', '5 crore'),
  ('RCB004VKO', 45, 120, 1800, 8, 18, 130.50, 'Batsman', '21 crore'),
  ('RCB005ARW', 15, 13, 240, 0, 1, 90.75, 'Batsman', '50.00 Lakhs'),
  ('RCB006DKT', 55, 100, 750, 1, 4, 112.25, 'Batsman', '3 crore'),
  ('RCB007DWL', 30, 20, 350, 0, 2, 150.20, 'All-Rounder', '2 crore'),
  ('RCB008GLM', 40, 10, 900, 2, 6, 180.30, 'All-Rounder', '8 crore'),
  ('RCB009HSP', 30, 45, 180, 0, 0, 80.10, 'Bowler', ' 2 crore Lakhs'),
  ('RCB010MLR', 12, 2, 180, 0, 1, 120.50, 'All-Rounder', '50.00 Lakhs'),
  ('RCB011SHA', 10, 15, 30, 0, 0, 60.25, 'Bowler', '50.00 Lakhs'),
  ('RCB012SSP', 5, 5, 50, 0, 0, 85.20, 'All-Rounder', '50.00 Lakhs'),
  ('RCB013WHA', 8, 10, 100, 0, 0, 95.50, 'Bowler', '50.00 Lakhs'),
  ('RCB014AKD', 7, 12, 40, 0, 0, 40.25, 'Bowler', '30.00 Lakhs'),
  ('RCB015JHZ', 12, 25, 30, 0, 0, 30.20, 'Bowler', '30.00 Lakhs'),
  ('RCB016KRS', 18, 20, 80, 0, 0, 70.50, 'Bowler', '30.00 Lakhs'),
  ('RCB017SKA', 20, 35, 60, 0, 0, 80.10, 'Bowler', '35.00 Lakhs'),
  ('RCB018MSS', 25, 50, 20, 0, 0, 40.20, 'Bowler', '35.00 Lakhs'),
  ('RCB019RST', 10, 15, 10, 0, 0, 20.50, 'Bowler', '30.00 Lakhs'),
  ('RCB020HMS', 5, 1, 30, 0, 0, 60.25, 'Batsman', '30.00 Lakhs'),
  ('RCB021WJK', 8, 2, 80, 0, 0, 120.00, 'All-Rounder', '50.00 Lakhs'),
  ('RCB022RJK', 3, 5, 10, 0, 0, 40.00, 'Bowler', '30.00 Lakhs'),
  ('RCB023ASK', 6, 10, 15, 0, 0, 30.00, 'Bowler', '30.00 Lakhs'),
  ('RCB024SYD', 2, 3, 5, 0, 0, 10.00, 'Bowler', '30.00 Lakhs'),
  ('RCB025MBH', 4, 8, 10, 0, 0, 20.00, 'Bowler', '30.00 Lakhs');



INSERT INTO player (playerId, name, nationality, age, clubId)
VALUES
  ('DC001DW', 'David Warner', 'Australian', 36, 'DC'),
  ('DC002PS', 'Prithvi Shaw', 'Indian', 22, 'DC'),
  ('DC003RP', 'Rovman Powell', 'West Indian', 28, 'DC'),
  ('DC004AP', 'Axar Patel', 'Indian', 28, 'DC'),
  ('DC005KN', 'Kamlesh Nagarkoti', 'Indian', 22, 'DC'),
  ('DC006LY', 'Lalit Yadav', 'Indian', 25, 'DC'),
  ('DC007MM', 'Mitchell Marsh', 'Australian', 30, 'DC'),
  ('DC008PD', 'Pravin Dubey', 'Indian', 29, 'DC'),
  ('DC009RP', 'Ripal Patel', 'Indian', 29, 'DC'),
  ('DC010SK', 'Sarfaraz Khan', 'Indian', 24, 'DC'),
  ('DC011VO', 'Vicky Ostwal', 'Indian', 25, 'DC'),
  ('DC012YD', 'Yash Dhull', 'Indian', 23, 'DC'),
  ('DC013AK', 'Aman Khan', 'Indian', 26, 'DC'),
  ('DC014AN', 'Anrich Nortje', 'South African', 28, 'DC'),
  ('DC015CS', 'Chetan Sakariya', 'Indian', 23, 'DC'),
  ('DC016KY', 'Kuldeep Yadav', 'Indian', 27, 'DC'),
  ('DC017LN', 'Lungi Ngidi', 'South African', 26, 'DC'),
  ('DC018MR', 'Mustafizur Rahman', 'Bangladeshi', 26, 'DC'),
  ('DC019KA', 'Khaleel Ahmed', 'Indian', 23, 'DC'),
  ('DC020PS', 'Phil Salt', 'English', 26, 'DC'),
  ('DC021IS', 'Ishant Sharma', 'Indian', 33, 'DC'),
  ('DC022MK', 'Mukesh Kumar', 'Indian', 26, 'DC'),
  ('DC023MP', 'Manish Pandey', 'Indian', 32, 'DC'),
  ('DC024RR', 'Rilee Rossouw', 'South African', 33, 'DC'),
  ('DC025AP', 'Abhishek Porel', 'Indian', 23, 'DC'),
  ('DC026RP', 'Rishabh Pant', 'Indian', 24, 'DC');

INSERT INTO playerstat (pId, noMatches, noWickets, totalRuns, Centuries, halfCenturies, StrikeRate, role, prize)
VALUES
  ('DC001DW', 38, 0, 1200, 3, 10, 125.75, 'Batsman', '10 crore'),
  ('DC002PS', 23, 0, 890, 1, 7, 140.25, 'Batsman', '50.00 Lakhs'),
  ('DC003RP', 27, 0, 650, 0, 5, 110.00, 'Batsman', '5 crore'),
  ('DC004AP', 30, 25, 250, 0, 1, 85.50, 'All-Rounder', '2 crore'),
  ('DC005KN', 15, 12, 100, 0, 0, 75.20, 'Bowler', '25.00 Lakhs'),
  ('DC006LY', 20, 8, 180, 0, 2, 95.30, 'All-Rounder', '50.00 Lakhs'),
  ('DC007MM', 10, 5, 120, 0, 0, 110.25, 'All-Rounder', '40.00 Lakhs'),
  ('DC008PD', 18, 15, 90, 0, 0, 60.00, 'All-Rounder', '30.00 Lakhs'),
  ('DC009RP', 12, 0, 200, 1, 1, 135.50, 'Batsman', '20.00 Lakhs'),
  ('DC010SK', 25, 0, 350, 0, 2, 120.10, 'Batsman', '50.00 Lakhs'),
  ('DC011VO', 30, 0, 50, 0, 0, 90.25, 'Batsman', '15.00 Lakhs'),
  ('DC012YD', 5, 0, 10, 0, 0, 50.50, 'Batsman', '10.00 Lakhs'),
  ('DC013AK', 8, 6, 70, 0, 0, 85.75, 'All-Rounder', '25.00 Lakhs'),
  ('DC014AN', 45, 50, 10, 0, 0, 30.25, 'Bowler', '1 crore'),
  ('DC015CS', 10, 15, 20, 0, 0, 35.00, 'Bowler', '10.00 Lakhs'),
  ('DC016KY', 30, 40, 50, 0, 0, 50.75, 'Bowler', '50.00 Lakhs'),
  ('DC017LN', 25, 30, 40, 0, 0, 60.00, 'Bowler', '50.00 Lakhs'),
  ('DC018MR', 18, 20, 60, 0, 0, 80.25, 'Bowler', '30.00 Lakhs'),
  ('DC019KA', 15, 25, 30, 0, 0, 70.50, 'Bowler', '25.00 Lakhs'),
  ('DC020PS', 20, 0, 450, 1, 3, 100.00, 'Batsman', '75.00 Lakhs'),
  ('DC021IS', 50, 65, 120, 0, 0, 75.00, 'All-Rounder', '1 crore'),
  ('DC022MK', 12, 18, 30, 0, 0, 45.00, 'All-Rounder', '20.00 Lakhs'),
  ('DC023MP', 15, 20, 40, 0, 0, 60.00, 'Bowler', '10.00 Lakhs'),
  ('DC024RR', 1, 1, 0, 0, 0, 0.00, 'Bowler', '30.00 lakhs'),
  ('DC025AP', 2, 3, 0, 0, 0, 0.00, 'Bowler', '30.00 lakhs'),
  ('DC026RP', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30.00 lakhs');


INSERT INTO player (playerId, name, nationality, age, clubId)
VALUES
  ('PBK001SD', 'Shikhar Dhawan', 'Indian', 36, 'PBKS'),
  ('PBK002BR', 'Bhanuka Rajapaksa', 'Sri Lankan', 29, 'PBKS'),
  ('PBK003JS', 'Jitesh Sharma', 'Indian', 28, 'PBKS'),
  ('PBK004JB', 'Jonny Bairstow', 'English', 32, 'PBKS'),
  ('PBK005PS', 'Prabhsimran Singh', 'Indian', 21, 'PBKS'),
  ('PBK006AT', 'Atharva Taide', 'Indian', 23, 'PBKS'),
  ('PBK007HB', 'Harpreet Brar', 'Indian', 26, 'PBKS'),
  ('PBK008LL', 'Liam Livingstone', 'English', 28, 'PBKS'),
  ('PBK009RB', 'Raj Angad Bawa', 'Indian', 21, 'PBKS'),
  ('PBK010RD', 'Rishi Dhawan', 'Indian', 32, 'PBKS'),
  ('PBK011SK', 'Shahrukh Khan', 'Indian', 25, 'PBKS'),
  ('PBK012AS', 'Arshdeep Singh', 'Indian', 23, 'PBKS'),
  ('PBK013BD', 'Baltej Dhanda', 'Indian', 27, 'PBKS'),
  ('PBK014KR', 'Kagiso Rabada', 'South African', 27, 'PBKS'),
  ('PBK015NE', 'Nathan Ellis', 'Australian', 28, 'PBKS'),
  ('PBK016RC', 'Rahul Chahar', 'Indian', 22, 'PBKS'),
  ('PBK017SC', 'Sam Curran', 'English', 24, 'PBKS'),
  ('PBK018SR', 'Sikandar Raza', 'Zimbabwean', 35, 'PBKS'),
  ('PBK019HB', 'Harpreet Bhatia', 'Indian', 31, 'PBKS'),
  ('PBK020VK', 'Vidwath Kaverappa', 'Indian', 25, 'PBKS'),
  ('PBK021MR', 'Mohit Rathee', 'Indian', 22, 'PBKS'),
  ('PBK022SS', 'Shivam Singh', 'Indian', 20, 'PBKS');

INSERT INTO playerstat (pId, noMatches, noWickets, totalRuns, Centuries, halfCenturies, StrikeRate, role, prize)
VALUES
  ('PBK001SD', 40, 0, 1350, 3, 12, 126.50, 'Batsman', '12 crore'),
  ('PBK002BR', 20, 5, 180, 0, 1, 100.25, 'All-Rounder', '4 crore'),
  ('PBK003JS', 10, 0, 80, 0, 0, 110.20, 'Batsman', '30 lakhs'),
  ('PBK004JB', 30, 0, 1100, 2, 7, 135.75, 'Batsman', '8 crore'),
  ('PBK005PS', 15, 0, 240, 0, 1, 105.30, 'Batsman', '50 lakhs'),
  ('PBK006AT', 5, 0, 50, 0, 0, 80.00, 'Batsman', '20 lakhs'),
  ('PBK007HB', 12, 15, 120, 0, 0, 90.50, 'All-Rounder', '1 crore'),
  ('PBK008LL', 25, 2, 340, 0, 2, 115.20, 'All-Rounder', '5 crore'),
  ('PBK009RB', 8, 10, 80, 0, 0, 75.25, 'All-Rounder', '80 lakhs'),
  ('PBK010RD', 22, 30, 180, 0, 0, 70.50, 'All-Rounder', '2 crore'),
  ('PBK011SK', 30, 0, 560, 1, 4, 120.30, 'Batsman', '6 crore'),
  ('PBK012AS', 18, 25, 40, 0, 0, 60.25, 'Bowler', '3 crore'),
  ('PBK013BD', 5, 5, 10, 0, 0, 45.50, 'Bowler', '40 lakhs'),
  ('PBK014KR', 35, 70, 10, 0, 0, 15.50, 'Bowler', '10 crore'),
  ('PBK015NE', 15, 20, 20, 0, 0, 30.20, 'Bowler', '1 crore'),
  ('PBK016RC', 20, 25, 15, 0, 0, 25.00, 'Bowler', '1 crore'),
  ('PBK017SC', 25, 30, 250, 0, 1, 90.20, 'All-Rounder', '6 crore'),
  ('PBK018SR', 10, 15, 70, 0, 0, 60.25, 'All-Rounder', '2 crore'),
  ('PBK019HB', 5, 0, 20, 0, 0, 50.00, 'Batsman', '30 lakhs'),
  ('PBK020VK', 2, 0, 5, 0, 0, 20.00, 'Batsman', '10 lakhs'),
  ('PBK021MR', 8, 12, 30, 0, 0, 25.50, 'Bowler', '50 lakhs'),
  ('PBK022SS', 0, 0, 0, 0, 0, 0.00, 'Bowler', '10 lakhs');


INSERT INTO player (playerId, name, nationality, age, clubId)
VALUES
  ('KKR001NR', 'Nitish Rana', 'Indian', 28, 'KKR'),
  ('KKR002SI', 'Shreyas Iyer', 'Indian', 27, 'KKR'),
  ('KKR003RS', 'Rinku Singh', 'Indian', 23, 'KKR'),
  ('KKR004RG', 'Rahmanullah Gurbaz', 'Afghan', 20, 'KKR'),
  ('KKR005DW', 'David Wiese', 'South African', 36, 'KKR'),
  ('KKR006SS', 'Suyash Sharma', 'Indian', 22, 'KKR'),
  ('KKR007KK', 'Kulwant Khejroliya', 'Indian', 29, 'KKR'),
  ('KKR008AR', 'Anukul Roy', 'Indian', 23, 'KKR'),
  ('KKR009LF', 'Lockie Ferguson', 'New Zealand', 30, 'KKR'),
  ('KKR010AR', 'Andre Russell', 'West Indian', 33, 'KKR'),
  ('KKR011VI', 'Venkatesh Iyer', 'Indian', 26, 'KKR'),
  ('KKR012UY', 'Umesh Yadav', 'Indian', 34, 'KKR'),
  ('KKR013HR', 'Harshit Rana', 'Indian', 21, 'KKR'),
  ('KKR014TS', 'Tim Southee', 'New Zealand', 33, 'KKR'),
  ('KKR015ST', 'Shardul Thakur', 'Indian', 30, 'KKR'),
  ('KKR016SN', 'Sunil Narine', 'Trinidadian', 33, 'KKR'),
  ('KKR017VA', 'Vaibhav Arora', 'Indian', 22, 'KKR'),
  ('KKR018VC', 'Varun Chakaravarthy', 'Indian', 30, 'KKR'),
  ('KKR019NJ', 'Narayan Jagadeesan', 'Indian', 26, 'KKR'),
  ('KKR020LD', 'Litton Das', 'Bangladeshi', 28, 'KKR'),
  ('KKR021MS', 'Mandeep Singh', 'Indian', 31, 'KKR'),
  ('KKR022SAH', 'Shakib Al Hasan', 'Bangladeshi', 35, 'KKR');


INSERT INTO playerstat (pId, noMatches, noWickets, totalRuns, Centuries, halfCenturies, StrikeRate, role, prize)
VALUES
  ('KKR001NR', 35, 0, 1050, 1, 7, 128.50, 'Batsman', '10 crore'),
  ('KKR002SI', 25, 0, 780, 2, 4, 125.30, 'Batsman', '8 crore'),
  ('KKR003RS', 15, 0, 200, 0, 1, 110.75, 'Batsman', '30 lakhs'),
  ('KKR004RG', 8, 0, 120, 0, 0, 90.20, 'Batsman', '20 lakhs'),
  ('KKR005DW', 20, 15, 180, 0, 0, 70.50, 'All-Rounder', '2 crore'),
  ('KKR006SS', 5, 0, 30, 0, 0, 80.25, 'Batsman', '40 lakhs'),
  ('KKR007KK', 12, 5, 40, 0, 0, 75.30, 'Bowler', '1 crore'),
  ('KKR008AR', 18, 20, 30, 0, 0, 60.75, 'Bowler', '3 crore'),
  ('KKR009LF', 30, 60, 10, 0, 0, 15.50, 'Bowler', '10 crore'),
  ('KKR010AR', 30, 550, 750, 3, 12, 120.75, 'All-Rounder', '12 crore'),
  ('KKR011VI', 28, 460, 620, 1, 9, 118.20, 'All-Rounder', '10 crore'),
  ('KKR012UY', 32, 25, 80, 0, 0, 70.50, 'Bowler', '2 crore'),
  ('KKR013HR', 10, 0, 50, 0, 0, 75.75, 'Batsman', '50 lakhs'),
  ('KKR014TS', 25, 40, 20, 0, 0, 30.20, 'Bowler', '1 crore'),
  ('KKR015ST', 20, 35, 15, 0, 0, 25.00, 'Bowler', '1 crore'),
  ('KKR016SN', 30, 25, 250, 0, 1, 90.30, 'All-Rounder', '6 crore'),
  ('KKR017VA', 8, 10, 70, 0, 0, 60.50, 'Bowler', '80 lakhs'),
  ('KKR018VC', 5, 10, 30, 0, 0, 75.25, 'Bowler', '30 lakhs'),
  ('KKR019NJ', 12, 0, 80, 0, 0, 100.00, 'Batsman', '10 lakhs'),
  ('KKR020LD', 18, 0, 120, 0, 1, 105.20, 'Batsman', '50 lakhs'),
  ('KKR021MS', 22, 0, 180, 0, 2, 110.75, 'Batsman', '1 crore'),
  ('KKR022SAH', 30, 20, 220, 0, 3, 120.30, 'All-Rounder', '4 crore');

INSERT INTO player (playerId, name, nationality, age, clubId)
VALUES
  ('SRH001AM', 'Aiden Markram', 'South African', 28, 'SRH'),
  ('SRH002AS', 'Abdul Samad', 'Indian', 23, 'SRH'),
  ('SRH003RT', 'Rahul Tripathi', 'Indian', 31, 'SRH'),
  ('SRH004GP', 'Glenn Phillips', 'New Zealand', 25, 'SRH'),
  ('SRH005AS', 'Abhishek Sharma', 'Indian', 21, 'SRH'),
  ('SRH006MJ', 'Marco Jansen', 'South African', 21, 'SRH'),
  ('SRH007WS', 'Washington Sundar', 'Indian', 22, 'SRH'),
  ('SRH008BK', 'Bhuvneshwar Kumar', 'Indian', 32, 'SRH'),
  ('SRH009FF', 'Fazalhaq Farooqi', 'Afghan', 22, 'SRH'),
  ('SRH010KT', 'Kartik Tyagi', 'Indian', 21, 'SRH'),
  ('SRH011TN', 'T Natarajan', 'Indian', 30, 'SRH'),
  ('SRH012UM', 'Umran Malik', 'Indian', 19, 'SRH'),
  ('SRH013HB', 'Harry Brook', 'English', 24, 'SRH'),
  ('SRH014MA', 'Mayank Agarwal', 'Indian', 31, 'SRH'),
  ('SRH015AH', 'Akeal Hosein', 'Trinidadian', 28, 'SRH'),
  ('SRH016HK', 'Heinrich Klaasen', 'South African', 30, 'SRH'),
  ('SRH017AS', 'Anmolpreet Singh', 'Indian', 24, 'SRH'),
  ('SRH018AR', 'Adil Rashid', 'English', 33, 'SRH'),
  ('SRH019MM', 'Mayank Markande', 'Indian', 24, 'SRH'),
  ('SRH020VS', 'Vivrant Sharma', 'Indian', 25, 'SRH'),
  ('SRH021MD', 'Mayank Dagar', 'Indian', 26, 'SRH'),
  ('SRH022SV', 'Samarth Vyas', 'Indian', 20, 'SRH'),
  ('SRH023SS', 'Sanvir Singh', 'Indian', 21, 'SRH'),
  ('SRH024US', 'Upendra Singh Yadav', 'Indian', 27, 'SRH'),
  ('SRH025NR', 'Nitish Kumar Reddy', 'Indian', 22, 'SRH');



INSERT INTO playerstat (pId, noMatches, noWickets, totalRuns, Centuries, halfCenturies, StrikeRate, role, prize)
VALUES
  ('SRH001AM', 35, 0, 1200, 2, 9, 130.50, 'Batsman', '10 crore'),
  ('SRH002AS', 18, 8, 150, 0, 1, 120.25, 'All-Rounder', '4 crore'),
  ('SRH003RT', 25, 0, 950, 1, 5, 110.20, 'Batsman', '2 crore'),
  ('SRH004GP', 10, 0, 280, 0, 2, 135.75, 'Batsman', '1 crore'),
  ('SRH005AS', 12, 15, 120, 0, 0, 90.50, 'All-Rounder', '80 lakhs'),
  ('SRH006MJ', 5, 12, 40, 0, 0, 60.25, 'Bowler', '50 lakhs'),
  ('SRH007WS', 20, 20, 200, 0, 1, 90.30, 'All-Rounder', '6 crore'),
  ('SRH008BK', 30, 60, 80, 0, 0, 30.50, 'Bowler', '8 crore'),
  ('SRH009FF', 8, 12, 30, 0, 0, 25.20, 'Bowler', '2 crore'),
  ('SRH010KT', 15, 20, 15, 0, 0, 25.00, 'Bowler', '1 crore'),
  ('SRH011TN', 22, 28, 50, 0, 0, 40.25, 'Bowler', '3 crore'),
  ('SRH012UM', 5, 0, 5, 0, 0, 20.00, 'Batsman', '50 lakhs'),
  ('SRH013HB', 20, 0, 450, 1, 2, 120.75, 'Batsman', '4 crore'),
  ('SRH014MA', 25, 0, 680, 0, 4, 115.50, 'Batsman', '5 crore'),
  ('SRH015AH', 12, 18, 60, 0, 0, 70.20, 'All-Rounder', '3 crore'),
  ('SRH016HK', 18, 0, 280, 0, 2, 105.25, 'Batsman', '2 crore'),
  ('SRH017AS', 8, 0, 80, 0, 0, 95.00, 'Batsman', '1 crore'),
  ('SRH018AR', 22, 30, 180, 0, 0, 80.25, 'Bowler', '4 crore'),
  ('SRH019MM', 15, 25, 120, 0, 0, 70.50, 'Bowler', '3 crore'),
  ('SRH020VS', 5, 0, 10, 0, 0, 45.50, 'Bowler', '30 lakhs'),
  ('SRH021MD', 30, 0, 560, 1, 3, 125.30, 'Batsman', '6 crore'),
  ('SRH022SV', 10, 0, 80, 0, 1, 100.20, 'Batsman', '1 crore'),
  ('SRH023SS', 20, 25, 200, 0, 0, 90.50, 'Bowler', '5 crore'),
  ('SRH024US', 12, 0, 40, 0, 0, 70.25, 'Batsman', '1 crore'),
  ('SRH025NR', 18, 0, 60, 0, 0, 75.00, 'Batsman', '2 crore');

INSERT INTO player (playerId, name, nationality, age, clubId)
VALUES
  ('CSK001MSD', 'MS Dhoni', 'Indian', 41, 'CSK'),
  ('CSK002DC', 'Devon Conway', 'New Zealand', 31, 'CSK'),
  ('CSK003RG', 'Ruturaj Gaikwad', 'Indian', 26, 'CSK'),
  ('CSK004SS', 'Subhranshu Senapati', 'Indian', 24, 'CSK'),
  ('CSK005AR', 'Ambati Rayudu', 'Indian', 36, 'CSK'),
  ('CSK006RJ', 'Ravindra Jadeja', 'Indian', 33, 'CSK'),
  ('CSK007DP', 'Dwaine Pretorius', 'South African', 32, 'CSK'),
  ('CSK008MS', 'Mitchell Santner', 'New Zealand', 30, 'CSK'),
  ('CSK009KBV', 'K Bhagath Varma', 'Indian', 22, 'CSK'),
  ('CSK010MA', 'Moeen Ali', 'English', 35, 'CSK'),
  ('CSK011RH', 'Rajvardhan Hangargekar', 'Indian', 20, 'CSK'),
  ('CSK012SD', 'Shivam Dube', 'Indian', 28, 'CSK'),
  ('CSK013DC', 'Deepak Chahar', 'Indian', 29, 'CSK'),
  ('CSK014MT', 'Maheesh Theekshana', 'Sri Lankan', 24, 'CSK'),
  ('CSK015MC', 'Mukesh Choudhary', 'Indian', 27, 'CSK'),
  ('CSK016AS', 'Akash Singh', 'Indian', 20, 'CSK'),
  ('CSK017PS', 'Prashant Solanki', 'Indian', 25, 'CSK'),
  ('CSK018SS', 'Simarjeet Singh', 'Indian', 24, 'CSK'),
  ('CSK019AR', 'Ajinkya Rahane', 'Indian', 34, 'CSK'),
  ('CSK020TD', 'Tushar Deshpande', 'Indian', 26, 'CSK'),
  ('CSK021BS', 'Ben Stokes', 'English', 31, 'CSK'),
  ('CSK022MP', 'Matheesha Pathirana', 'Sri Lankan', 25, 'CSK'),
  ('CSK023SR', 'Shaik Rasheed', 'Indian', 22, 'CSK'),
  ('CSK024NS', 'Nishant Sindhu', 'Indian', 21, 'CSK'),
  ('CSK025KJ', 'Kyle Jamieson', 'New Zealand', 27, 'CSK'),
  ('CSK026AM', 'Ajay Mandal', 'Indian', 19, 'CSK');


INSERT INTO playerstat (pId, noMatches, noWickets, totalRuns, Centuries, halfCenturies, StrikeRate, role, prize)
VALUES
  ('CSK001MSD', 30, 0, 580, 0, 5, 120.50, 'Batsman', '15 crore'),
  ('CSK002DC', 20, 0, 480, 1, 4, 135.75, 'Batsman', '7 crore'),
  ('CSK003RG', 10, 0, 220, 0, 2, 105.30, 'Batsman', '4 crore'),
  ('CSK004SS', 8, 0, 180, 0, 1, 110.20, 'Batsman', '2 crore'),
  ('CSK005AR', 25, 0, 750, 2, 8, 130.00, 'Batsman', '12 crore'),
  ('CSK006RJ', 28, 20, 180, 0, 0, 80.50, 'All-Rounder', '8 crore'),
  ('CSK007DP', 15, 15, 120, 0, 0, 90.00, 'All-Rounder', '6 crore'),
  ('CSK008MS', 20, 25, 240, 0, 1, 100.20, 'All-Rounder', '10 crore'),
  ('CSK009KBV', 5, 0, 40, 0, 0, 95.25, 'Batsman', '30 lakhs'),
  ('CSK010MA', 12, 12, 80, 0, 0, 80.30, 'All-Rounder', '50 lakhs'),
  ('CSK011RH', 0, 0, 0, 0, 0, 0.00, 'Bowler', '20 lakhs'),
  ('CSK012SD', 18, 18, 80, 0, 0, 70.50, 'All-Rounder', '1 crore'),
  ('CSK013DC', 30, 40, 120, 0, 0, 55.25, 'Bowler', '2 crore'),
  ('CSK014MT', 5, 8, 20, 0, 0, 40.50, 'Bowler', '40 lakhs'),
  ('CSK015MC', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30.00 lakhs'),
  ('CSK016AS', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30.00 lakhs'),
  ('CSK017PS', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30.00 lakhs'),
  ('CSK018SS', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30.00 lakhs'),
  ('CSK019AR', 25, 0, 560, 1, 4, 120.30, 'Batsman', '6 crore'),
  ('CSK020TD', 15, 0, 180, 0, 1, 90.50, 'Batsman', '3 crore'),
  ('CSK021BS', 12, 0, 140, 0, 1, 80.20, 'Batsman', '2 crore'),
  ('CSK022MP', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30.00 lakhs'),
  ('CSK023SR', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30.00 lakhs'),
  ('CSK024NS', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30.00 lakhs'),
  ('CSK025KJ', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30.00 lakhs'),
  ('CSK026AM', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30.00 lakhs');

INSERT INTO player (playerId, name, nationality, age, clubId)
VALUES
  ('MI001RS', 'Rohit Sharma', 'Indian', 35, 'MI'),
  ('MI002DB', 'Dewald Brevis', 'South African', 30, 'MI'),
  ('MI003SY', 'Suryakumar Yadav', 'Indian', 31, 'MI'),
  ('MI004IK', 'Ishan Kishan', 'Indian', 24, 'MI'),
  ('MI005AT', 'Arjun Tendulkar', 'Indian', 22, 'MI'),
  ('MI006HS', 'Hrithik Shokeen', 'Indian', 23, 'MI'),
  ('MI007JA', 'Jofra Archer', 'English', 27, 'MI'),
  ('MI008MAK', 'Mohd. Arshad Khan', 'Indian', 19, 'MI'),
  ('MI009NTV', 'N. Tilak Varma', 'Indian', 21, 'MI'),
  ('MI010RS', 'Ramandeep Singh', 'Indian', 25, 'MI'),
  ('MI011TD', 'Tim David', 'Singaporean', 31, 'MI'),
  ('MI012JB', 'Jasprit Bumrah', 'Indian', 28, 'MI'),
  ('MI013SW', 'Sandeep Warrier', 'Indian', 30, 'MI'),
  ('MI014CG', 'Cameron Green', 'Australian', 23, 'MI'),
  ('MI015JR', 'Jhye Richardson', 'Australian', 25, 'MI'),
  ('MI016KKS', 'Kumar Kartikeya Singh', 'Indian', 22, 'MI'),
  ('MI017TS', 'Tristan Stubbs', 'English', 24, 'MI'),
  ('MI018PC', 'Piyush Chawla', 'Indian', 33, 'MI'),
  ('MI019AM', 'Akash Madhwal', 'Indian', 20, 'MI'),
  ('MI020SM', 'Shams Mulani', 'Indian', 28, 'MI'),
  ('MI021JB', 'Jason Behrendorff', 'Australian', 32, 'MI'),
  ('MI022NW', 'Nehal Wadhera', 'Indian', 21, 'MI'),
  ('MI023VV', 'Vishnu Vinod', 'Indian', 28, 'MI'),
  ('MI024RG', 'Raghav Goyal', 'Indian', 22, 'MI'),
  ('MI025DJ', 'Duan Jansen', 'South African', 26, 'MI');



select * from playerstat;

INSERT INTO playerstat (pId, noMatches, noWickets, totalRuns, Centuries, halfCenturies, StrikeRate, role, prize)
VALUES
  ('MI001RS', 35, 0, 880, 3, 7, 130.20, 'Batsman', '14 crore'),
  ('MI002DB', 28, 25, 120, 0, 0, 70.50, 'Bowler', '8 crore'),
  ('MI003SY', 25, 0, 650, 2, 6, 125.30, 'Batsman', '10 crore'),
  ('MI004IK', 20, 0, 420, 1, 3, 135.20, 'Batsman', '6 crore'),
  ('MI005AT', 10, 0, 60, 0, 0, 80.20, 'Batsman', '2 crore'),
  ('MI006HS', 8, 0, 40, 0, 0, 85.50, 'Batsman', '1 crore'),
  ('MI007JA', 25, 30, 160, 0, 0, 70.20, 'All-Rounder', '12 crore'),
  ('MI008MAK', 5, 8, 30, 0, 0, 50.25, 'Bowler', '40 lakhs'),
  ('MI009NTV', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('MI010RS', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('MI011TD', 15, 0, 120, 0, 1, 100.20, 'Batsman', '3 crore'),
  ('MI012JB', 20, 40, 80, 0, 0, 70.50, 'Bowler', '4 crore'),
  ('MI013SW', 8, 10, 30, 0, 0, 45.30, 'Bowler', '1 crore'),
  ('MI014CG', 12, 15, 140, 0, 1, 75.25, 'All-Rounder', '5 crore'),
  ('MI015JR', 30, 35, 180, 0, 0, 80.20, 'Bowler', '8 crore'),
  ('MI016KKS', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('MI017TS', 5, 0, 20, 0, 0, 50.00, 'Batsman', '30 lakhs'),
  ('MI018PC', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('MI019AM', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('MI020SM', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('MI021JB', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('MI022NW', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('MI023VV', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('MI024RG', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('MI025DJ', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs');


INSERT INTO player (playerId, name, nationality, age, clubId)
VALUES
  ('GT001HP', 'Hardik Pandya', 'Indian', 28, 'GT'),
  ('GT002AM', 'Abhinav Manohar', 'Indian', 24, 'GT'),
  ('GT003DM', 'David Miller', 'South African', 32, 'GT'),
  ('GT004SG', 'Shubman Gill', 'Indian', 22, 'GT'),
  ('GT005MW', 'Matthew Wade', 'Australian', 34, 'GT'),
  ('GT006WS', 'Wriddhiman Saha', 'Indian', 37, 'GT'),
  ('GT007BSS', 'B. Sai Sudharsan', 'Indian', 22, 'GT'),
  ('GT008DN', 'Darshan Nalkande', 'Indian', 23, 'GT'),
  ('GT009JY', 'Jayant Yadav', 'Indian', 32, 'GT'),
  ('GT010PS', 'Pradeep Sangwan', 'Indian', 30, 'GT'),
  ('GT011RT', 'Rahul Tewatia', 'Indian', 28, 'GT'),
  ('GT012SM', 'Shivam Mavi', 'Indian', 22, 'GT'),
  ('GT013VS', 'Vijay Shankar', 'Indian', 31, 'GT'),
  ('GT014AJ', 'Alzarri Joseph', 'West Indian', 25, 'GT'),
  ('GT015MS', 'Mohammad Shami', 'Indian', 31, 'GT'),
  ('GT016NA', 'Noor Ahmad', 'Afghan', 21, 'GT'),
  ('GT017SK', 'Sai Kishore', 'Indian', 25, 'GT'),
  ('GT018RK', 'Rashid Khan', 'Afghan', 23, 'GT'),
  ('GT019YD', 'Yash Dayal', 'Indian', 22, 'GT'),
  ('GT020KW', 'Kane Williamson', 'New Zealander', 31, 'GT'),
  ('GT021JL', 'Joshua Little', 'Irish', 22, 'GT'),
  ('GT022OS', 'Odean Smith', 'West Indian', 27, 'GT'),
  ('GT023UP', 'Urvil Patel', 'Indian', 21, 'GT'),
  ('GT024KSB', 'K.S Bharat', 'Indian', 28, 'GT'),
  ('GT025MS', 'Mohit Sharma', 'Indian', 33, 'GT');

INSERT INTO playerstat (pId, noMatches, noWickets, totalRuns, Centuries, halfCenturies, StrikeRate, role, prize)
VALUES
  ('GT001HP', 20, 12, 420, 0, 2, 140.50, 'All-Rounder', '15 crore'),
  ('GT002AM', 8, 0, 80, 0, 0, 100.20, 'Batsman', '4 crore'),
  ('GT003DM', 15, 0, 320, 0, 1, 120.80, 'Batsman', '8 crore'),
  ('GT004SG', 25, 0, 650, 2, 5, 135.30, 'Batsman', '12 crore'),
  ('GT005MW', 12, 0, 200, 0, 1, 112.50, 'Batsman', '6 crore'),
  ('GT006WS', 10, 0, 150, 0, 0, 90.40, 'Batsman', '5 crore'),
  ('GT007BSS', 5, 8, 30, 0, 0, 45.25, 'Bowler', '1 crore'),
  ('GT008DN', 8, 15, 20, 0, 0, 70.20, 'Bowler', '2 crore'),
  ('GT009JY', 20, 25, 80, 0, 0, 60.50, 'Bowler', '3 crore'),
  ('GT010PS', 12, 18, 50, 0, 0, 55.30, 'Bowler', '2.5 crore'),
  ('GT011RT', 15, 5, 180, 0, 1, 125.50, 'All-Rounder', '10 crore'),
  ('GT012SM', 18, 10, 70, 0, 0, 70.60, 'Bowler', '3.5 crore'),
  ('GT013VS', 20, 18, 200, 0, 1, 100.40, 'All-Rounder', '12 crore'),
  ('GT014AJ', 8, 12, 30, 0, 0, 75.20, 'Bowler', '4 crore'),
  ('GT015MS', 25, 30, 140, 0, 0, 65.30, 'Bowler', '5 crore'),
  ('GT016NA', 5, 8, 20, 0, 0, 50.25, 'Bowler', '1.5 crore'),
  ('GT017SK', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('GT018RK', 12, 20, 60, 0, 0, 60.20, 'Bowler', '3 crore'),
  ('GT019YD', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('GT020KW', 20, 0, 620, 2, 3, 140.30, 'Batsman', '18 crore'),
  ('GT021JL', 5, 10, 30, 0, 0, 45.50, 'Bowler', '1 crore'),
  ('GT022OS', 8, 15, 60, 0, 0, 80.20, 'All-Rounder', '2.5 crore'),
  ('GT023UP', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('GT024KSB', 8, 0, 20, 0, 0, 40.30, 'Batsman', '1 crore'),
  ('GT025MS', 15, 25, 70, 0, 0, 60.50, 'Bowler', '3 crore');


INSERT INTO player (playerId, name, nationality, age, clubId)
VALUES
  ('RR001SS', 'Sanju Samson', 'Indian', 27, 'RR'),
  ('RR002DP', 'Devdutt Padikkal', 'Indian', 22, 'RR'),
  ('RR003JB', 'Jos Buttler', 'English', 31, 'RR'),
  ('RR004SH', 'Shimron Hetmyer', 'West Indian', 25, 'RR'),
  ('RR005YJ', 'Yashasvi Jaiswal', 'Indian', 20, 'RR'),
  ('RR006DJ', 'Dhruv Jurel', 'Indian', 20, 'RR'),
  ('RR007RA', 'Ravichandran Ashwin', 'Indian', 35, 'RR'),
  ('RR008RP', 'Riyan Parag', 'Indian', 20, 'RR'),
  ('RR009KC', 'KC Cariappa', 'Indian', 29, 'RR'),
  ('RR010KS', 'Kuldeep Sen', 'Indian', 25, 'RR'),
  ('RR011KY', 'Kuldip Yadav', 'Indian', 23, 'RR'),
  ('RR012NS', 'Navdeep Saini', 'Indian', 29, 'RR'),
  ('RR013OM', 'Obed McCoy', 'West Indian', 24, 'RR'),
  ('RR014KA', 'KM Asif', 'Indian', 28, 'RR'),
  ('RR015PK', 'Prasidh Krishna', 'Indian', 26, 'RR'),
  ('RR016TB', 'Trent Boult', 'New Zealander', 33, 'RR'),
  ('RR017MA', 'Murugan Ashwin', 'Indian', 31, 'RR'),
  ('RR018YC', 'Yuzvendra Chahal', 'Indian', 31, 'RR'),
  ('RR019AV', 'Akash Vashisht', 'Indian', 24, 'RR'),
  ('RR020JH', 'Jason Holder', 'West Indian', 29, 'RR'),
  ('RR021DF', 'Donovan Ferreira', 'South African', 26, 'RR'),
  ('RR022KR', 'Kunal Rathore', 'Indian', 23, 'RR'),
  ('RR023AZ', 'Adam Zampa', 'Australian', 30, 'RR'),
  ('RR024AB', 'Abdul P A', 'Indian', 25, 'RR'),
  ('RR025JR', 'Joe Root', 'English', 31, 'RR');


INSERT INTO playerstat (pId, noMatches, noWickets, totalRuns, Centuries, halfCenturies, StrikeRate, role, prize)
VALUES
  ('RR001SS', 20, 0, 620, 1, 5, 140.30, 'Batsman', '14 crore'),
  ('RR002DP', 18, 0, 580, 1, 3, 135.20, 'Batsman', '12 crore'),
  ('RR003JB', 25, 0, 750, 3, 4, 150.40, 'Batsman', '16 crore'),
  ('RR004SH', 12, 0, 320, 0, 2, 120.50, 'Batsman', '8 crore'),
  ('RR005YJ', 10, 0, 250, 0, 1, 115.30, 'Batsman', '6 crore'),
  ('RR006DJ', 5, 0, 50, 0, 0, 80.40, 'Batsman', '2 crore'),
  ('RR007RA', 20, 30, 80, 0, 0, 65.20, 'Bowler', '3 crore'),
  ('RR008RP', 15, 8, 180, 0, 1, 120.50, 'All-Rounder', '10 crore'),
  ('RR009KC', 8, 12, 40, 0, 0, 50.20, 'Bowler', '2 crore'),
  ('RR010KS', 5, 5, 30, 0, 0, 45.30, 'Bowler', '1 crore'),
  ('RR011KY', 12, 15, 60, 0, 0, 65.40, 'Bowler', '3 crore'),
  ('RR012NS', 18, 25, 70, 0, 0, 75.30, 'Bowler', '4 crore'),
  ('RR013OM', 8, 12, 30, 0, 0, 85.20, 'Bowler', '2 crore'),
  ('RR014KA', 5, 8, 20, 0, 0, 60.30, 'Bowler', '1 crore'),
  ('RR015PK', 20, 35, 100, 0, 0, 55.20, 'Bowler', '6 crore'),
  ('RR016TB', 15, 0, 320, 1, 2, 130.30, 'Batsman', '12 crore'),
  ('RR017MA', 12, 15, 80, 0, 0, 70.20, 'Bowler', '3 crore'),
  ('RR018YC', 25, 40, 120, 0, 0, 60.20, 'Bowler', '5 crore'),
  ('RR019AV', 18, 20, 60, 0, 0, 80.40, 'Bowler', '4 crore'),
  ('RR020JH', 20, 30, 180, 0, 0, 100.50, 'All-Rounder', '14 crore'),
  ('RR021DF', 5, 10, 40, 0, 0, 70.30, 'Bowler', '2 crore'),
  ('RR022KR', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('RR023AZ', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('RR024AB', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('RR025JR', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs');



-- Lucknow Super Giants (LSG)
INSERT INTO player (playerId, name, nationality, age, clubId)
VALUES
  ('LSG001KR', 'KL Rahul', 'Indian', 30, 'LSG'),
  ('LSG002MV', 'Manan Vohra', 'Indian', 28, 'LSG'),
  ('LSG003QK', 'Quinton de Kock', 'South African', 29, 'LSG'),
  ('LSG004AB', 'Ayush Badoni', 'Indian', 21, 'LSG'),
  ('LSG005DH', 'Deepak Hooda', 'Indian', 26, 'LSG'),
  ('LSG006KG', 'Krishnappa Gowtham', 'Indian', 33, 'LSG'),
  ('LSG007KS', 'Karan Sharma', 'Indian', 28, 'LSG'),
  ('LSG008KP', 'Krunal Pandya', 'Indian', 30, 'LSG'),
  ('LSG009KM', 'Kyle Mayers', 'Barbadian', 28, 'LSG'),
  ('LSG010MS', 'Marcus Stoinis', 'Australian', 32, 'LSG'),
  ('LSG011AK', 'Avesh Khan', 'Indian', 25, 'LSG'),
  ('LSG012MW', 'Mark Wood', 'English', 32, 'LSG'),
  ('LSG013MY', 'Mayank Yadav', 'Indian', 20, 'LSG'),
  ('LSG014MK', 'Mohsin Khan', 'Indian', 21, 'LSG'),
  ('LSG015RB', 'Ravi Bishnoi', 'Indian', 22, 'LSG'),
  ('LSG016JU', 'Jaydev Unadkat', 'Indian', 29, 'LSG'),
  ('LSG017YT', 'Yash Thakur', 'Indian', 21, 'LSG'),
  ('LSG018RS', 'Romario Shepherd', 'Guyanese', 27, 'LSG'),
  ('LSG019NP', 'Nicholas Pooran', 'West Indian', 26, 'LSG'),
  ('LSG020AM', 'Amit Mishra', 'Indian', 39, 'LSG'),
  ('LSG021DS', 'Daniel Sams', 'Australian', 29, 'LSG'),
  ('LSG022PM', 'Prerak Mankad', 'Indian', 24, 'LSG'),
  ('LSG023SS', 'Swapnil Singh', 'Indian', 29, 'LSG'),
  ('LSG024NU', 'Naveen Ul Haq', 'Afghan', 23, 'LSG'),
  ('LSG025YS', 'Yudhvir Singh', 'Indian', 20, 'LSG');


INSERT INTO playerstat (pId, noMatches, noWickets, totalRuns, Centuries, halfCenturies, StrikeRate, role, prize)
VALUES
  ('LSG001KR', 20, 0, 620, 1, 5, 140.30, 'Batsman', '14 crore'),
  ('LSG002MV', 18, 0, 580, 1, 3, 135.20, 'Batsman', '12 crore'),
  ('LSG003QK', 25, 0, 750, 3, 4, 150.40, 'Batsman', '16 crore'),
  ('LSG004AB', 12, 0, 320, 0, 2, 120.50, 'Batsman', '8 crore'),
  ('LSG005DH', 10, 0, 250, 0, 1, 115.30, 'Batsman', '6 crore'),
  ('LSG006KG', 5, 0, 50, 0, 0, 80.40, 'Batsman', '2 crore'),
  ('LSG007KS', 20, 30, 80, 0, 0, 65.20, 'Bowler', '3 crore'),
  ('LSG008KP', 15, 8, 180, 0, 1, 120.50, 'All-Rounder', '10 crore'),
  ('LSG009KM', 8, 12, 40, 0, 0, 50.20, 'Bowler', '2 crore'),
  ('LSG010MS', 5, 8, 20, 0, 0, 60.30, 'Bowler', '1 crore'),
  ('LSG011AK', 12, 15, 60, 0, 0, 65.40, 'Bowler', '3 crore'),
  ('LSG012MW', 18, 25, 70, 0, 0, 75.30, 'Bowler', '4 crore'),
  ('LSG013MY', 8, 12, 30, 0, 0, 85.20, 'Bowler', '2 crore'),
  ('LSG014MK', 5, 8, 40, 0, 0, 70.30, 'Bowler', '1 crore'),
  ('LSG015RB', 20, 35, 100, 0, 0, 55.20, 'Bowler', '6 crore'),
  ('LSG016JU', 15, 0, 320, 1, 2, 130.30, 'Batsman', '12 crore'),
  ('LSG017YT', 12, 15, 80, 0, 0, 70.20, 'Bowler', '3 crore'),
  ('LSG018RS', 25, 40, 120, 0, 0, 60.20, 'Bowler', '5 crore'),
  ('LSG019NP', 18, 20, 60, 0, 0, 80.40, 'Bowler', '4 crore'),
  ('LSG020AM', 20, 30, 180, 0, 0, 100.50, 'All-Rounder', '14 crore'),
  ('LSG021DS', 5, 10, 40, 0, 0, 70.30, 'Bowler', '2 crore'),
  ('LSG022PM', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('LSG023SS', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('LSG024NU', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs'),
  ('LSG025YS', 0, 0, 0, 0, 0, 0.00, 'Bowler', '30 lakhs');


-- Insert data for 14 matches (max two matches with each club)

-- Match 1
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M1', 'RCB', 'MI', '2023-08-10 19:00:00', '150/3 - 145/7', 'MCHINN');

-- Match 2
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M2', 'PBKS', 'DC', '2023-08-11 19:00:00', '170/5 - 165/9', 'PCA');

-- Match 3
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M3', 'SRH', 'RR', '2023-08-12 19:00:00', '185/4 - 182/8', 'RGICS');

-- Match 4
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M4', 'CSK', 'KKR', '2023-08-13 19:00:00', '200/2 - 195/6', 'MACHID');

-- Match 5
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M5', 'MI', 'RR', '2023-08-14 19:00:00', '190/3 - 185/7', 'WANSTA');

-- Match 6
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M6', 'DC', 'KKR', '2023-08-15 19:00:00', '175/4 - 170/9', 'ARUNST');

-- Match 7
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M7', 'CSK', 'PBKS', '2023-08-16 19:00:00', '165/3 - 160/8', 'MCHINN');

-- Match 8
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M8', 'RCB', 'SRH', '2023-08-17 19:00:00', '190/5 - 180/6', 'MACHID');

-- Match 9
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M9', 'KKR', 'RR', '2023-08-18 19:00:00', '155/6 - 150/8', 'Sawaims');

-- Match 10
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M10', 'DC', 'CSK', '2023-08-19 19:00:00', '180/4 - 175/7', 'PCA');

-- Match 11
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M11', 'MI', 'PBKS', '2023-08-20 19:00:00', '200/2 - 195/6', 'WANSTA');

-- Match 12
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M12', 'RCB', 'KKR', '2023-08-21 19:00:00', '190/3 - 185/7', 'ARUNST');

-- Match 13
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M13', 'SRH', 'CSK', '2023-08-22 19:00:00', '180/4 - 175/7', 'RGICS');

-- Match 14
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M14', 'RR', 'PBKS', '2023-08-23 19:00:00', '200/2 - 195/6', 'Sawaims');

-- Insert data for 20 additional matches (max two matches with each club)

-- Match 15
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M15', 'DC', 'MI', '2023-08-24 19:00:00', '185/5 - 180/8', 'MCHINN');

-- Match 16
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M16', 'KKR', 'PBKS', '2023-08-25 19:00:00', '160/4 - 155/8', 'ARUNST');

-- Match 17
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M17', 'RCB', 'RR', '2023-08-26 19:00:00', '195/6 - 190/4', 'PCA');

-- Match 18
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M18', 'SRH', 'PBKS', '2023-08-27 19:00:00', '160/5 - 155/9', 'MACHID');

-- Match 19
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M19', 'KKR', 'MI', '2023-08-28 19:00:00', '175/3 - 170/7', 'MCHINN');

-- Match 20
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M20', 'CSK', 'RCB', '2023-08-29 19:00:00', '195/4 - 190/8', 'ARUNST');

-- Match 21
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M21', 'RR', 'DC', '2023-08-30 19:00:00', '180/5 - 175/9', 'Sawaims');

-- Match 22
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M22', 'SRH', 'MI', '2023-08-31 19:00:00', '170/6 - 165/8', 'PCA');

-- Match 23
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M23', 'RCB', 'PBKS', '2023-09-01 19:00:00', '190/5 - 185/7', 'ARUNST');

-- Match 24
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M24', 'CSK', 'RR', '2023-09-02 19:00:00', '180/4 - 175/8', 'RGICS');

-- Match 25
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M25', 'KKR', 'DC', '2023-09-03 19:00:00', '175/5 - 170/8', 'WANSTA');

-- Match 26
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M26', 'MI', 'RCB', '2023-09-04 19:00:00', '185/6 - 180/9', 'MACHID');

-- Match 27
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M27', 'PBKS', 'SRH', '2023-09-05 19:00:00', '170/4 - 165/7', 'ARUNST');

-- Match 28
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M28', 'RR', 'KKR', '2023-09-06 19:00:00', '195/5 - 190/7', 'Sawaims');

-- Match 29
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M29', 'DC', 'RCB', '2023-09-07 19:00:00', '180/4 - 175/8', 'PCA');

-- Match 30
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M30', 'MI', 'CSK', '2023-09-08 19:00:00', '190/5 - 185/7', 'WANSTA');

-- Match 31
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M31', 'RR', 'SRH', '2023-09-09 19:00:00', '160/6 - 155/8', 'RGICS');

-- Match 32
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M32', 'KKR', 'RCB', '2023-09-10 19:00:00', '175/4 - 170/7', 'MCHINN');

-- Match 33
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M33', 'DC', 'PBKS', '2023-09-11 19:00:00', '185/5 - 180/9', 'ARUNST');

-- Match 34
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M34', 'CSK', 'SRH', '2023-09-12 19:00:00', '195/6 - 190/8', 'PCA');

-- Match 35
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M35', 'MI', 'RR', '2023-09-13 19:00:00', '170/4 - 165/7', 'MACHID');

-- Match 36
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M36', 'RCB', 'DC', '2023-09-14 19:00:00', '195/5 - 190/8', 'WANSTA');

-- Match 37
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M37', 'KKR', 'SRH', '2023-09-15 19:00:00', '185/6 - 180/9', 'Sawaims');

-- Match 38
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M38', 'PBKS', 'CSK', '2023-09-16 19:00:00', '160/5 - 155/8', 'RGICS');

-- Match 39
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M39', 'RR', 'MI', '2023-09-17 19:00:00', '175/4 - 170/7', 'ARUNST');

-- Match 40
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M40', 'DC', 'SRH', '2023-09-18 19:00:00', '195/6 - 190/8', 'PCA');

-- Match 41
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M41', 'KKR', 'PBKS', '2023-09-19 19:00:00', '170/4 - 165/7', 'MCHINN');

-- Match 42
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M42', 'MI', 'RCB', '2023-09-20 19:00:00', '185/5 - 180/8', 'ARUNST');

-- Match 43
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M43', 'RR', 'CSK', '2023-09-21 19:00:00', '160/6 - 155/8', 'Sawaims');

-- Match 44
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M44', 'PBKS', 'DC', '2023-09-22 19:00:00', '185/5 - 180/9', 'RGICS');

-- Match 45
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M45', 'RCB', 'KKR', '2023-09-23 19:00:00', '175/4 - 170/8', 'MACHID');

-- Match 46
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M46', 'SRH', 'RR', '2023-09-24 19:00:00', '185/6 - 180/7', 'WANSTA');

-- Match 47
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M47', 'CSK', 'MI', '2023-09-25 19:00:00', '170/5 - 165/9', 'PCA');

-- Match 48
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M48', 'PBKS', 'RR', '2023-09-26 19:00:00', '175/6 - 170/8', 'ARUNST');

-- Match 49
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M49', 'RCB', 'SRH', '2023-09-27 19:00:00', '160/5 - 155/9', 'MCHINN');

-- Match 50
INSERT INTO matches (matchno, winningteam, lossingteam, Date, Score, groundid) 
VALUES ('M50', 'DC', 'KKR', '2023-09-28 19:00:00', '185/5 - 180/7', 'RGICS');






