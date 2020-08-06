
let names = [];
let ids = [];
let emails = [];

let studentNames = [];

// enter student names and add them to the array
function provideStudentNames(studentNames) {
  for (i = 0; i < studentNames.length; i++) {
    names[i] = studentNames[i].toUpperCase();
  }
}

// generate IDs from 111111 to 999999
var generateIds = () => {
  for (i = 0; i < names.length; i++) {
    ids[i] = Math.round(Math.random() * (999999 - 111111) + 111111);
  }
};

// generate email: first initial + last name + last 3 digits of id + @adadevelopersacademy.org
var generateEmails = () => {
  for (i = 0; i < names.length; i++) {
    // split the first and last name
    let firstLastName = names[i].split(' ');

    // get the first character of the fist name
    let firstInitial = firstLastName[0][0];

    //get the last name
    let lastName = firstLastName[1].toUpperCase();

    // get last three digits of the id
    let lastThreeIdDigits = ids[i] % 1000; //divide by 1000 and find the remainder

    // combine inputs into an email
    emails[i] =
      firstInitial + lastName + lastThreeIdDigits + '@adadeveloperacademy.org';
  }
};

var printInfo = () => {
  console.log(names.length)
  generateIds();
  generateEmails();
  

  for (i = 0; i < names.length; i++) {
    console.log(names[i]);
    console.log(ids[i]);
    console.log(emails[i]);
  }
};
