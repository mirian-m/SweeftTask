import Foundation

//4. გვაქვს N ფიცრისგან შემდგარი ხიდი. სიძველის გამო ზოგიერთი ფიცარი ჩატეხილია. ზურიკოს შეუძლია გადავიდეს შემდეგ ფიცარზე ან გადაახტეს ერთ ფიცარს. (რათქმაუნდა ჩატეხილ   ფიცარზე ვერ გადავა)
//   ჩვენი ამოცანაა დავითვალოთ რამდენი განსხვავებული კომბინაციით შეუძლია ზურიკოს ხიდის გადალახვა. გადმოგვეცემა ხიდის სიგრძე და ინფორმაცია ჩატეხილ ფიცრებზე. 0 აღნიშნავს ჩატეხილ ფიცარს 1_ანი კი მთელს. დასაწყისისთვის ზურიკო დგას ხიდის ერთ მხარეს (არა პირველ ფიცარზე) და გადალახვად ჩათვლება ხიდის მეორე მხარე (ბოლო ფიცრის შემდეგი ნაბიჯი)

//   Examples:
//   countWays(n: 3, steps: [0, 1, 0]) ➞ 1
//   countWays(n: 4, steps: [0, 1, 1, 0]) ➞ 0
//   countWays(n: 5, steps: [1, 1, 0, 1, 1]) ➞ 4 // (s, 1, 2, 4, 5, f), (s, 1, 2, 4, f), (s, 2, 4, 5, f), (s, 2, 4, f)  s - ხიდის ერთი მხარე, f - ხიდის მეორე მხარე

func countWays(n: Int, steps: [Int]) -> Int {
    if steps.isEmpty {
        return 0
    }
    var res = [Int]()
    res.append(contentsOf: [1, steps[0]])
    for i in 2...steps.count {
        if (steps[i - 1] == 0) {
            res.append(0)
        } else {
            res.append(res[i - 1] + res[i - 2])
        }
    }
    return res[res.count - 1] + res[res.count - 2]
}

print("The number of different combinations is \(countWays(n: 3, steps: [0, 1, 0]))")
print("The number of different combinations is \(countWays(n: 4, steps: [0, 1, 1, 0]))") // The answer to this example is not correctly given in the condition. The answer to this example is 1, not 0
print("The number of different combinations is \(countWays(n: 5, steps: [1, 1, 0, 1, 1]))")
