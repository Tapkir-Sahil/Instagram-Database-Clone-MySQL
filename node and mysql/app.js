const{faker} =require('@faker-js/faker');

// console.log(faker.internet.email());
// console.log(faker.date.past());

function generate_address(){ 
    console.log(faker.location.streetAddress());
    console.log(faker.location.city());
    console.log(faker.location.state());
}

generate_address();