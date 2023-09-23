import UIKit
//მოცემულია String რომელიც შედგება „(„ და „)“ ელემენტებისგან. დაწერეთ ფუნქცია რომელიც აბრუნებს ფრჩხილები არის თუ არა მათემატიკურად სწორად დასმული.
//Boolean isProperly(String sequence);
//მაგ: (()()) სწორი მიმდევრობაა,  ())() არასწორია

func isProperly(sequence: String) -> Bool {
    var arrayOfSimbols = [Character]()
    var isCorrect = true
    for char in sequence {
        if char == "(" {
            arrayOfSimbols.append(char)
        } else if !arrayOfSimbols.isEmpty {
            arrayOfSimbols.removeLast()
        } else {
            isCorrect = false
            break
        }
    }
    return isCorrect && arrayOfSimbols.isEmpty
}

let sequence = "())()"
if isProperly(sequence: sequence) {
    print("GIVEN SEQUENCE \(sequence) IS CORRECT")
} else {
    print("GIVEN SEQUENCE \(sequence) IS INCORRECT")
}
