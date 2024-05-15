
let myPets: [String] = ["Black", "Erik", "Minerva"]
var myPetsHobbies: [String: String] = [
  "Black": "Run",
  "Erik": "Play",
  "Minerva": "Listen to music"
]


let numberOfMuseumsLeftToVisit: Int = 0
var moneyLeftAtTheEndOfCurrentMonth: Double = 0


// Your implementation here
class Pet {
    let name: String
    let owner: String
    let likes: [String]
    let dislikes: [String]
    let neutral: [String]
    
    init (name: String, owner: String, likes: [String], dislikes: [String], neutral: [String]) {
        self.name = name
        self.owner = owner
        self.likes = likes
        self.dislikes = dislikes
        self.neutral = neutral
    }
    func getInformation(kind: String) -> String {
           switch kind {
           case "Likes":
               if !likes.isEmpty {
                   return "\(name) likes \(likes.joined(separator: ", "))!"
               } else {
                   return "\(name) doesn't have any likes."
               }
           case "Dislikes":
               if !dislikes.isEmpty {
                   return "\(name) dislikes \(dislikes.joined(separator: ", "))!"
               } else {
                   return "\(name) doesn't have any dislikes."
               }
           case "Neutral":
               if !neutral.isEmpty {
                   return "\(name) does not like or dislike playing with \(neutral.joined(separator: ", "))"
               } else {
                   return "\(name) doesn't have any neutral preferences."
               }
           default:
               return "Invalid kind of information."
           }
    }
}

let black = Pet(
  name: "Black",
  owner: "Josué",
  likes: ["running", "chasing", "singing"],
  dislikes: ["octopus", "cats"],
  neutral: ["squirrels"]
)

black.getInformation(kind: "Likes")
// Returns: Black likes running, chasing and singing!
black.getInformation(kind: "Dislikes")
// Returns: Black dislikes octopus and cats!
black.getInformation(kind: "Neutral")
// Returns: Black does not like or dislike playing with squirrels

