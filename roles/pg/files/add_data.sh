#!/bin/bash
psql -d "testdb" -c "CREATE TABLE IF NOT EXISTS large_test (num1 bigint, num2 double precision, num3 double precision);"
echo "`date` add 2000000 lines" >> /tmp/mypg.log
psql -d "testdb" -c "INSERT INTO large_test (num1, num2, num3) SELECT round(random()*10), random(), random()*142 FROM generate_series(1, 2000000) s(i);"
sleep 120
echo "`date` add 2000000 lines" >> /tmp/mypg.log
psql -d "testdb" -c "INSERT INTO large_test (num1, num2, num3) SELECT round(random()*10), random(), random()*142 FROM generate_series(1, 2000000) s(i);"
sleep 120
echo "`date` add 2000000 lines" >> /tmp/mypg.log
psql -d "testdb" -c "INSERT INTO large_test (num1, num2, num3) SELECT round(random()*10), random(), random()*142 FROM generate_series(1, 2000000) s(i);"
sleep 120
echo "`date` add 2000000 lines" >> /tmp/mypg.log
psql -d "testdb" -c "INSERT INTO large_test (num1, num2, num3) SELECT round(random()*10), random(), random()*142 FROM generate_series(1, 2000000) s(i);"
sleep 120
echo "`date` add 2000000 lines" >> /tmp/mypg.log
psql -d "testdb" -c "INSERT INTO large_test (num1, num2, num3) SELECT round(random()*10), random(), random()*142 FROM generate_series(1, 2000000) s(i);"
sleep 120
echo "`date` add 2000000 lines" >> /tmp/mypg.log
psql -d "testdb" -c "INSERT INTO large_test (num1, num2, num3) SELECT round(random()*10), random(), random()*142 FROM generate_series(1, 2000000) s(i);"
