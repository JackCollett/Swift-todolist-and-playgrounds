
var myList = ["Cat", "Mouse", "Frog"]

// Write some code to amend the list here.
myList.append("Lynx")
myList.sort()

print(myList)
// Should print:
// ["Mouse", "Lynx", "Cat", "Frog"]

let myAnimals = ["Cat", "cat", "frog", "cat", "dog", "Dog"]
var counters = [String: Int]()
// Do not worry about this syntax for now!
// All we have done is declared an empty dictionary
// with keys being strings and values being numbers

// Write some code to count the items in the array here
counters["cat"] = 0
counters["frog"] = 0
counters["dog"] = 0
for animal in myAnimals {
    var animalLowercased = animal.lowercased()
    
    if myAnimals.contains(animalLowercased) {
        counters[animalLowercased]! += 1
    }
}

print(counters)

// Should print (in any order)
// [ "cat": 3, "dog": 2, "frog": 1 ]



var myCountries = [ "United Kingdom", "Germany", "France", "Japan", "United States"] // Put the names of some countries in here

// Program should print a dictionary with each of the letters of the alphabet
// and the number of countries which begin with that letter.
// E.g. [ "a": 2, "b": 0, ... ]
var dict = [Character: Int]()

for char in "abcdefghijklmnopqrstuvwxyz" {
    dict[char] = 0
}
for country in myCountries {
    if let firstChar = country.lowercased().first, let count = dict[firstChar] {
        dict[firstChar] = count + 1
    }
}
print(dict)
