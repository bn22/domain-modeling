import Foundation

class Person {
    let firstName : String?
    let lastName : String?
    let currentAge : Int?
    let job : Job?
    let spouse : Person?
    
    init(first: String?, last : String?, currentJob : Job?, currentSpouse : Person?, ageNow : Int?) {
        firstName = first
        lastName = last
        currentAge = ageNow
        job = currentJob
        spouse = currentSpouse
    }
    
    func printString() {
        if (firstName != nil && lastName != nil && currentAge != nil) {
            print("\(firstName!) \(lastName!) is \(currentAge!)")
            if (currentAge >= 16) {
                if (job != nil) {
                    print("Job = \(job!.jobTitle!)")
                } else {
                    print("No Job")
                }
            } else {
                print("Not old enough for a job")
            }
            if (currentAge >= 18) {
                if (spouse != nil) {
                    print("Spouse = \(spouse!.firstName!) \(spouse!.lastName!)")
                } else {
                    print("No Spouse")
                }
            } else {
                print("Not old enough for a spouse")
            }
        }
    }
}