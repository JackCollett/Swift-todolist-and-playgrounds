


func printFavouriteBookDetails(_ title: String,_ description: String?,_ reason: String?){
    print("Title: \(title)")
    if let descriptionValue = description {
        print("Description: \(descriptionValue)")
    }
    if let reasonValue = reason {
        print("Reason: \(reasonValue)")
    }
}
// Write a function that accepts a non-optional title string, and two optional strings description and reason.
//Function should output a qwll-formattetd message like
var Title = "Hot Milk"
var Description = "A vibrant and starkly humorous tale of a mother-daughter relationship and the complexities of identity."
var Reason = "It's a compelling exploration of the human psyche and personal transformation."

printFavouriteBookDetails(Title, nil, Reason)
