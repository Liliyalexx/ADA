
//Utilize a single array variable to store all student information

let student_roster = [
  {
    name:"",
    ID:0 ,
    email: ""

  },
  {
    name:"",
    ID: 0,
    email: ""

  },
  {
    name:"",
    ID: 0,
    email: ""

  }
];

//Retrieve the data from the array of hashes


// accept user input for the student's name
function provideStudent_names(name) {
  for (i = 0; i < student_names.length; i++) {
    names[i] = name[i];
  }
}

// generate IDs from 111111 to 999999
var generateIds = () => {
  for (i = 0; i < names.length; i++) {
    id[i] = Math.round(Math.random() * (999999 - 111111) + 111111);
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
    email[i] =
      firstInitial + lastName + lastThreeIdDigits + '@adadeveloperacademy.org';
  }
};

var printStudent_roster = () => {
  console.log(names.length)
  generateIds();
  generateEmails();


  for (i = 0; i < names.length; i++) {
    console.log(names[i]);
    console.log(ids[i]);
    console.log(emails[i]);
  }
};
