import UIKit
//დაწერეთ ფუნქცია რომელიც დააჯამებს ციფრებს ორ რიცსხვს შორის.
//   მაგალითად გადმოგვეცემა 19 და 22. მათ შორის ციფრების ჯამი იქნება :
// 19, 20, 21, 22
// (1 + 9) + (2 + 0) + (2 + 1) + (2 + 2) = 19

func sumOfDigits(start: Int, end: Int) -> Int {
    var sum = 0
    for number in start...end {
        sum += digitsSum(of: number)
    }
    return sum
}

// Count digits sum of given number
func digitsSum(of number: Int) -> Int {
    var number = number
    var sum = 0
    while (number / 10) != 0 {
        sum += number % 10
        number = number / 10
    }
    return sum + number
}
let startNumber = 19
let endNumber = 22
print("Sum of digits between \(startNumber)...\(endNumber) is ",sumOfDigits(start: startNumber, end: endNumber))

