import Foundation

class Family {
    var members : [Person]?
    
    init(familyMembers : [Person]?) {
        members = familyMembers
    }
    
    func checkLegal() -> String? {
        if members != nil {
            for (var index = 0; index < members!.count; index++) {
                if (members![index].currentAge >= 21) {
                    return "Legal"
                }
            }
        }
        return "Not Legal"
    }
    
    func householdIncome() -> Int{
        var legal = false
        if (members != nil) {
            for (var index = 0; index < members!.count; index++) {
                if (members![index].currentAge >= 21) {
                    legal = true
                }
            }
            if (legal) {
                var total = 0
                for (var index = 0; index < members!.count; index++) {
                    if (members![index].currentAge > 16) {
                        if (members![index].job!.jobType == "hourly") {
                            total = total + members![index].job!.calculateIncome(2000)
                        } else {
                            total = total + members![index].job!.jobSalary!
                        }
                    }
                }
                return total
            } else {
                print("Not Legal Family")
                return 0
            }
        }
        return 0
    }
    
    func haveChild(firstName : String?, lastName : String?) {
        if (members != nil) {
            let child = Person(first: firstName, last: lastName, currentJob: nil, currentSpouse: nil, ageNow: 0)
            members!.append(child)
        }
    }
}