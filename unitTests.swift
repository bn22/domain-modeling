import Foundation

func checkMoneyConvert (value : Double?, amount: Double?, currency : String?, tCurrency : String?) {
    var money = Money(amount: amount, currency: currency)
    money.convertMoney(tCurrency!)
    if (value != nil && amount != nil && currency != nil && tCurrency != nil){
        print("Expected result is \(value!) for converting \(amount!) \(currency!) to \(tCurrency!)")
        if (money.amount == value) {
            print("     Unit Test Passed")
        } else {
            print("     Unit Test Failed")
        }
    } else {
        print("The inputed parameters were Amount: \(amount) Currency: \(currency) New Currency: \(tCurrency)")
    }
}

func checkMoneyAdd (value : Double?, amount: Double?, currency : String?, tCurrency : String?, change : Double?) {
    var money = Money(amount: amount, currency: currency)
    money.addMoney(change, tCurrency: tCurrency)
    if (value != nil && amount != nil && currency != nil && tCurrency != nil && change != nil){
        print("Expected result is \(value!) \(tCurrency!) for adding \(amount!) \(currency!) to \(change!) \(tCurrency!)")
        if (money.amount == value && money.currency == tCurrency) {
            print("     Unit Test Passed")
        } else {
            print("     Unit Test Failed")
        }
    } else {
        print("The inputed parameters were Amount:\(amount) Addition:\(change) Currency:\(currency) NewCurrency:\(tCurrency)")
    }
}

func checkMoneySub(value : Double?, amount: Double?, currency : String?, tCurrency : String?, change : Double?) {
    var money = Money(amount: amount, currency: currency)
    money.subMoney(change, tCurrency: tCurrency)
    if (value != nil && amount != nil && currency != nil && tCurrency != nil && change != nil){
        print("Expected result is \(value!) \(tCurrency!) for adding \(amount!) \(currency!) to \(change!) \(tCurrency!)")
        if (money.amount == value && money.currency == tCurrency) {
            print("     Unit Test Passed")
        } else {
            print("     Unit Test Failed")
        }
    } else {
        print("The inputed parameters were Amount: \(amount) Subtraction: \(change) Currency: \(currency) New Currency \(tCurrency)")
    }
}

func checkCalculateIncome(value : Int?, title : String?, salary : Int?, type : String?, hours : Int?) {
    let jobForIncome = Job(title : title, salary : salary, type : type)
    let income = jobForIncome.calculateIncome(hours)
    if (value != nil && title != nil && salary != nil && type != nil && hours != nil){
        print("Expected result is \(value!) for working \(salary!) for \(hours!) hours at a \(type!) job")
        if(value == income) {
            print("     Unit Test Passed")
        } else {
            print("     Unit Test Failed")
        }
    } else {
        print("The input parameters were Job Title: \(title) Job Salary: \(salary) Job Type: \(type) Hours \(hours)")
    }
}

func checkRaise(value : Double?, title : String?, salary :Int?, type : String?, percent : Int?) {
    let jobForRaise = Job(title : title, salary : salary, type : type)
    let raise = jobForRaise.raise(percent)
    if (value != nil && title != nil && salary != nil && type != nil && percent != nil){
        print("Expected result is \(value!) for raise of \(percent!)% at \(salary!)")
        if(value == raise) {
            print("     Unit Test Passed")
        } else {
            print("     Unit Test Failed")
        }
    } else {
        print("The input parameters were Job Title: \(title) Job Salary: \(salary) Job Type: \(type) Percent Raise \(percent)")
    }
}

func printPerson(first: String?, last : String?, currentJob : Job?, currentSpouse : Person?, ageNow : Int?, updateSpouse : Person?) {
    let per = Person(first: first, last: last, currentJob: currentJob, currentSpouse: currentSpouse, ageNow: ageNow)
    if (updateSpouse != nil) {
        per.updateSpouse(updateSpouse!)
    }
    if (first != nil && last != nil && ageNow != nil) {
        per.printString()
    } else {
        print("One property of First name: \(first) Last Name: \(last) Age: \(ageNow) is nil")
    }
}

func checkHouseholdIncome(value : Int?, person1 : Person?, person2 : Person?, person3 : Person?) {
    if (person1 != nil && person2 != nil && person3 != nil) {
        let personArray : [Person]? = [person1!, person2!, person3!]
        let per = Family(familyMembers: personArray)
        let familyIncome = per.householdIncome()
        if (person1!.currentAge! >= 21 || person2!.currentAge! >= 21 || person2!.currentAge! >= 21 ) {
            print("Expected result is \(value!) for family with yearly income of \(person1!.job!.jobSalary!) (\(person1!.currentAge!) years old) \(person1!.job!.jobType!) + \(person2!.job!.jobSalary!) \(person2!.job!.jobType!) (\(person2!.currentAge!) years old) + \(person3!.job!.jobSalary!) \(person3!.job!.jobType!)  (\(person3!.currentAge!) years old) ")
            if (familyIncome == value) {
                print("     Unit Test Passed")
            } else {
                print("     Unit Test Failed")
            }
        } else {
          print("No one in the family is old enough")
        }
    } else {
        print("One of the People is nil")
    }
}

func haveChild(person1 : Person?, person2 : Person?, person3 : Person?, firstName : String?, lastName : String?) {
    if (person1 != nil && person2 != nil && person3 != nil && firstName != nil && lastName != nil) {
        let personArray : [Person]? = [person1!, person2!, person3!]
        let per = Family(familyMembers: personArray)
        per.haveChild(firstName, lastName: lastName)
        if (person1!.currentAge! >= 21 || person2!.currentAge! >= 21 || person3!.currentAge! >= 21 ) {
            print("Expected result = New child with first name: \(firstName!), last name : \(lastName!)")
            if (per.members![3].firstName == firstName && per.members![3].lastName == lastName) {
                per.members![3].printString()
                print(" Unit Test Passed")
            } else {
                print(" Unit Test Failed")
            }
        } else {
            print("No one in the family is old enough")
        }
    } else {
        print("One of the People is nil or first : \(firstName), last : \(lastName) is nil")
    }
}