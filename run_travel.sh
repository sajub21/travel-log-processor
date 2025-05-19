#!/bin/bash
# Create CSV file with travel data

cat > travel_log.csv << EOL
continent,country,date,travel_method,distance_km,travel_time_hr,travel_cost_usd
Europe,France,2025-05-01,flight,1000,2,200
Europe,Germany,2025-05-02,train,800,3,100
Europe,Italy,2025-05-03,car,300,4,50
Europe,Spain,2025-05-04,flight,1200,2.5,180
Europe,Netherlands,2025-05-05,train,700,3.2,90
Asia,Japan,2025-05-01,flight,1500,4,300
Asia,China,2025-05-02,train,1300,5,250
Asia,India,2025-05-03,car,900,15,100
Asia,South Korea,2025-05-04,flight,1100,2.8,220
Asia,Thailand,2025-05-05,car,400,7,80
Africa,Egypt,2025-05-01,car,200,5,50
Africa,South Africa,2025-05-02,flight,1800,3.5,350
Africa,Nigeria,2025-05-03,car,600,10,120
Africa,Kenya,2025-05-04,flight,1600,3,320
Africa,Morocco,2025-05-05,train,500,8,75
North America,USA,2025-05-01,flight,2500,5,400
North America,Canada,2025-05-02,car,800,10,150
North America,Mexico,2025-05-03,flight,1800,4,280
North America,Cuba,2025-05-04,car,300,6,60
North America,Jamaica,2025-05-05,flight,2000,4.5,350
South America,Brazil,2025-05-01,flight,2200,4,320
South America,Argentina,2025-05-02,car,1200,15,180
South America,Chile,2025-05-03,flight,2000,3.5,300
South America,Peru,2025-05-04,car,900,12,150
South America,Colombia,2025-05-05,flight,1700,3,270
EOL

# Run Python program with the created CSV file
python3 travel_processor.py travel_log.csv
