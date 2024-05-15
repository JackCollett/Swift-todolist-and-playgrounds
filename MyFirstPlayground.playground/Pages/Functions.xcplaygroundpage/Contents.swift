func addFive (num: Int) -> Int {
    return num + 5
}
addFive(num: 2132)

func subtractLowFromHigh (a: Int, b: Int) -> Int {
    if (a > b) {
        return a - b
    }
    else if (a < b) {
        return b - a
    } else {
        return a; b
    }
}
print(addFive(num: subtractLowFromHigh(a: 1463, b: 16475)))

func superify (_ element: String) -> String {
    return "super" + element
}
print(superify(superify(superify(superify("dog")))))

// print(superify(element: superify(element: superify(element: superify(element: "cat")))))
// Should print:
"supersupersupersupercat"
