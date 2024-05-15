50 - 23;

(365 * 24) * 60;

32452 / 13;

32452 % 13;

1_000;

var randomInt = Int.random(in: 1..<6)
if (randomInt == 1) {
    print("One")
}
else if randomInt == 2 {
    print("two")
}
else {
    print("more than two")
}



let roles = ["doctor", "nurse", "patient", "driver", "plumber"]
var role = roles.randomElement()

// Print "Please go to the second floor" if `role` is "doctor"
// Print "Please go to the first floor" if `role` is "nurse"
// Print "Please go to the waiting room" if `role` is "patient"
// Print "Please go to reception" if `role` is none of the above
switch role {
case "doctor":
    print("Please go the the second floor")
case "nurse":
    print("Please go the the first floor")
case "patient":
    print("Please go the the waiting room")
case "driver", "plumber":
    print("Please go to reception")
default: break
};


var rrandomInt = Int.random(in: 1..<101)

// Print "Fizz" if `randomInt` is divisible by 3
// Print "Buzz" if `randomInt` is divisible by 5
// Print "FizzBuzz" if `randomInt` is divisible by 3 and 5
// Otherwise, print `randomInt`

switch rrandomInt {
case _ where rrandomInt % 15 == 0:
    print("Fizzbuzz")
case _ where rrandomInt % 5 == 0:
    print("Buzz")
case _ where rrandomInt % 3 == 0:
    print("Fizz")
default: print(rrandomInt)
}
