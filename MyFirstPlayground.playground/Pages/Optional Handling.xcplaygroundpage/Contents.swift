var petNickname: String? = "Fluffy"
// Write your function here

func greet(_ name: String?) {
    if let value = name {
        print("Hello \(value)")
    } else {
        print("Hi there")
    }
}

greet(petNickname)
greet(nil)


func hello(_ name: String?) {
    guard let value = name else {
        print("The value is none")
        return
    }
    print("the value is \(value)")
}
hello(nil)
