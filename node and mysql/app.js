// import { faker } from '@faker-js/faker';
// import mysql from 'mysql2/promise';

// var connection=mysql.createConnection({
//     host:'localhost',
//     user:'root',
//     password:'solo#1',
//     database:'join_us'
// });

// var q= 'SELECT CURTIME() AS time, CURDATE() AS date, NOW() AS now';
// connection.query(q,function(error,result,field){
//     if(error) throw error;
//     console.log(result[0].time);
//     console.log(result[0].date);
//     console.log(result[0].now);
// });
// connection.destroy();

// // function generate_address(){ 
//     //     console.log(faker.location.streetAddress());
//     //     console.log(faker.location.city());
//     //     console.log(faker.location.state());
//     // }
//     // console.log(faker.internet.email());
//     // console.log(faker.date.past());
// // generate_address();

import { faker } from '@faker-js/faker';
import mysql from 'mysql2/promise';

const main = async () => {
  // Establish connection using async/await
  const connection = await mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'leveling#1',
    database: 'join_us',
  });

  try {
    // Correct SQL query
    const [rows] = await connection.execute(
      'SELECT CURTIME() AS time, CURDATE() AS date, NOW() AS now'
    );

    // Output the results
    console.log('Current Time:', rows[0].time);
    console.log('Current Date:', rows[0].date);
    console.log('Current Date and Time:', rows[0].now);

    // You can now use faker to generate fake data if needed
    // Example: Generate random address
    // console.log(faker.location.streetAddress());
    // console.log(faker.location.city());
    // console.log(faker.location.state());
    // console.log(faker.internet.email());
    // console.log(faker.date.past());

  } catch (error) {
    console.error('Error in query:', error);
  } finally {
    // Close the connection
    await connection.end();
  }
};

main();