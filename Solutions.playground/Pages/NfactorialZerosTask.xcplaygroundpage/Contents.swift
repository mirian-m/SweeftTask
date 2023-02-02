import Foundation
//გადმოგეცემათ მთელი რიცხვი N. დაწერეთ ფუნქცია რომელიც დაითვლის რამდენი 0ით ბოლოვდება N! (ფაქტორიალი)
//     შენიშვნა 1000! შედგება 2568 სიმბოლოსაგან.


func zeros(N: Int) -> Int {
    var count = 0
    var i = 5
    while N / i >= 1 {
        count += N / i
        i *= 5
    }
    return count
}
zeros(N: 7)
zeros(N: 12)
zeros(N: 490)
