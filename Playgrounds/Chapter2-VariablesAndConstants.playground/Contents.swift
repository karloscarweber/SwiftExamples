//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}

greet("Karl", day: "Weber")

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {

    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics([2,4,6,8,10])
print(statistics.min)
print(statistics.1)
print(statistics.sum)


func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sumOf()
sumOf(5,6,7,8)



/*

## OOOH! NESTED FUNCTIONS:

Nested functions are the new hotness in Swift, I believe.

*/


func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    add()
    add()
    add()
    return y
}

returnFifteen()

func makeIncrement() -> (Int->Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    
    return addOne
}

var increment = makeIncrement()
increment(12)


func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
        
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [10, 19, 7, 12]

hasAnyMatches(numbers, condition: lessThanTen)


/*
# Closures
    You can write a closure without a name by surrrounding code with braces ({})
    in seperates the arguments and return types from the actual body.
    It
*/

numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumbers = numbers.map({number in 3 * number})
print(mappedNumbers)


// so the sort method on numbers takes a comparison as it's only argument

let sortedNumbers = numbers.sort({ $1 > $2 })
print(sortedNumbers)




