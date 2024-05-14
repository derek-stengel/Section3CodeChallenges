import UIKit

// Write a simple function that takes a Date as a parameter and returns a Boolean representing whether the date is today or not.

// Make sure that your function does not return a false positive by only checking the day.

extension Date {
    func isToday() -> Bool {
        Calendar.current.isDateInToday(self)
    }
}

print((Date.now.isToday()))
print((Date.now + 86400).isToday())

// or

extension Date {
    func isToday1() -> Bool {
        let timeDiffInSeconds = self.timeIntervalSince1970 - Date.now.timeIntervalSince1970
        if timeDiffInSeconds <= 0 && timeDiffInSeconds >= -(24*60*60) {
            return true
        } else {
            return false
        }
    }
}

print(Date.now.isToday1())
print((Date.now + 86400).isToday1())
