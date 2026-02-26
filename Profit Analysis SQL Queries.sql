-- Create Database
CREATE DATABASE project_profit_analysis;
USE project_profit_analysis;

-- Create Table
CREATE TABLE startup (
    RnD_Spend FLOAT,
    Administration FLOAT,
    Marketing_Spend FLOAT,
    State VARCHAR(50),
    Profit FLOAT
);

-- View Data
SELECT *FROM startup;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM startup;

-- Average Profit by State
SELECT State, AVG(Profit) AS Avg_Profit
FROM startup
GROUP BY State;

-- Highest Profit Startup
SELECT *FROM startup
ORDER BY Profit DESC
LIMIT 1;

-- R&D vs Profit
SELECT RnD_Spend, Profit
FROM startup;

-- Marketing vs Profit
SELECT Marketing_Spend, Profit
FROM startup;

-- Administration vs Profit
SELECT Administration, Profit
FROM startup;
