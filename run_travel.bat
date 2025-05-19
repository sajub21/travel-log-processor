@echo off
REM Create CSV file with travel data

echo continent,country,date,travel_method,distance_km,travel_time_hr,travel_cost_Gbp > travel_log.csv
echo Europe,France,2025-05-01,flight,1000,2,200 >> travel_log_long.csv
echo Europe,Germany,2025-05-02,train,800,3,100 >> travel_log_long.csv
echo Europe,Italy,2025-05-03,car,300,4,50 >> travel_log_long.csv
echo Europe,Spain,2025-05-04,flight,1200,2.5,180 >> travel_log_long.csv
echo Europe,Netherlands,2025-05-05,train,700,3.2,90 >> travel_log_long.csv
echo Asia,Japan,2025-05-01,flight,1500,4,300 >> travel_log_long.csv
echo Asia,China,2025-05-02,train,1300,5,250 >> travel_log_long.csv
echo Asia,India,2025-05-03,car,900,15,100 >> travel_log_long.csv
echo Asia,South Korea,2025-05-04,flight,1100,2.8,220 >> travel_log_long.csv
echo Asia,Thailand,2025-05-05,car,400,7,80 >> travel_log_long.csv
echo Africa,Egypt,2025-05-01,car,200,5,50 >> travel_log_long.csv
echo Africa,South Africa,2025-05-02,flight,1800,3.5,350 >> travel_log_long.csv
echo Africa,Nigeria,2025-05-03,car,600,10,120 >> travel_log_long.csv
echo Africa,Kenya,2025-05-04,flight,1600,3,320 >> travel_log_long.csv
echo Africa,Morocco,2025-05-05,train,500,8,75 >> travel_log_long.csv
echo North America,USA,2025-05-01,flight,2500,5,400 >> travel_log_long.csv
echo North America,Canada,2025-05-02,car,800,10,150 >> travel_log_long.csv
echo North America,Mexico,2025-05-03,flight,1800,4,280 >> travel_log_long.csv
echo North America,Cuba,2025-05-04,car,300,6,60 >> travel_log_long.csv
echo North America,Jamaica,2025-05-05,flight,2000,4.5,350 >> travel_log_long.csv
echo South America,Brazil,2025-05-01,flight,2200,4,320 >> travel_log_long.csv
echo South America,Argentina,2025-05-02,car,1200,15,180 >> travel_log_long.csv
echo South America,Chile,2025-05-03,flight,2000,3.5,300 >> travel_log_long.csv
echo South America,Peru,2025-05-04,car,900,12,150 >> travel_log_long.csv
echo South America,Colombia,2025-05-05,flight,1700,3,270 >> travel_log_long.csv

REM Run the Python script
python travel_processor.py travel_log.csv
