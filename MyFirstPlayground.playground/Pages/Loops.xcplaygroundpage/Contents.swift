
var activities = ["play", "sleep", "eat"]

for item in activities {
  print("Most young dogs like to \(item).")
}


var activities2 = ["play", "sleep", "eat"]

for index in 0..<activities2.count {
  print("Most young dogs like to \(activities2[index]).")
}

var count = 0
for range in 2341...34325 {
    if range % 2 == 0 {
        count = count + range
    }else {
    }
}
print(count)


var fact = 1
for range in 1...17 {
    fact = fact * range
    print(fact)
}
print(fact)
