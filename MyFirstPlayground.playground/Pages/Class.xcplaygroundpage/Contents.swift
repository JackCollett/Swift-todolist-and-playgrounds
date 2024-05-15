class Introducer {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    func announce() -> String {
        return "I am \(name)"
    }
    func introduce(friend: String) -> String {
        return "Hello \(friend), I am \(name)"
    }
}


var introducer = Introducer(name: "Josué")

print(introducer.announce())
// Should print: "I am Josué!"

print(introducer.introduce(friend: "Fred"))
// Should print: "Hello Fred, I am Josué!"

class Reminder {
    let name: String
    var task: String?
    
    init(name: String){
        self.name = name
    }
    func remindMeTo(task: String) {
        self.task = task
    }
    func remind () -> String {
        guard let task = task else {
            return "\(name)! No task set."
        }
        return "\(name)! \(task)!"
    }
}
var reminder = Reminder(name: "Josué")

reminder.remindMeTo(task: "Walk the dog")

print(reminder.remind())
// Should print: "Josué! Walk the dog!"
