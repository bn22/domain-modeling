import Foundation

print("///Test Case for Money Value Type///")
print("")
print("///Converting Money///")
print("")
checkMoneyConvert (12.5, amount: 10.00, currency : "USD", tCurrency : "CAN")
checkMoneyConvert (15, amount: 10.00, currency : "USD", tCurrency : "EUR")
checkMoneyConvert (5.0, amount: 10.00, currency : "USD", tCurrency : "GBP")
let amount : Double? = nil
let currency : String? = nil
checkMoneyConvert (5.0, amount: 10.00, currency : currency, tCurrency : "GBP")
checkMoneyConvert (5.0, amount: amount, currency : "USD", tCurrency : "GBP")
print("")
print("///Adding Money///")
print("")
checkMoneyAdd (15.0, amount: 10.0, currency : "USD", tCurrency : "CAN", change : 2.5)
checkMoneyAdd (6.0, amount: 9.0, currency : "EUR", tCurrency : "GBP", change : 3)
checkMoneyAdd (9.0, amount: 9.0, currency : nil, tCurrency : "EUR", change : 3)
print("")
print("//Subtracting Money///")
print("")
checkMoneySub (10.0, amount: 10.0, currency : "USD", tCurrency : "CAN", change : 2.5)
checkMoneySub (0.0, amount: 9.0, currency : "EUR", tCurrency : "GBP", change : 3)
checkMoneySub (0.0, amount: 9.0, currency : nil, tCurrency : "EUR", change : 3)

print(" ")
print("///Test Case for Job///")
print(" ")

let teacher = Job(title: "Teacher", salary: 20, type : "hourly")
let doctor = Job(title: "Doctor", salary: 100000, type : "yearly")
let ceo = Job(title: "CEO", salary: 1000000, type : "yearly")
let nilSalary  : Int? = nil
let nilType : String? = nil
print("")
print("///Income///")
print("")
checkCalculateIncome(400, title : "Teacher", salary : 20, type : "hourly", hours : 20)
checkCalculateIncome(420, title : "Lawyer", salary : 21, type : "hourly", hours : 20)
checkCalculateIncome(100000, title : "CEO", salary : 100000, type : "yearly", hours : 200)
checkCalculateIncome(1000000, title : "Doctor", salary : 1000000, type : "yearly", hours : 2000)
checkCalculateIncome(10, title : "President", salary : nilSalary, type : "yearly", hours : 2000)
print("")
print("///Raise///")
print("")
checkRaise(40.0, title: "Teacher", salary: 20, type: "hourly", percent: 100)
checkRaise(31.5, title: "Lawyer", salary: 21, type: "hourly", percent: 50)
checkRaise(120000.0, title: "CEO", salary: 100000, type: "yearly", percent: 20)
checkRaise(1250000.0, title: "Doctor", salary: 1000000, type: "yearly", percent: 25)
checkRaise(10.0, title: "President", salary: 200, type: nilType, percent: 200)

print(" ")
print("///Test Case for Person///")
print(" ")

let lawyer = Job(title: "Lawyer", salary: 20, type: "hourly")
let ceoJob = Job(title: "CEO", salary: 20000, type: "yearly")
let doctorJob = Job(title: "Doctor", salary: 45, type: "hourly")

let a : Person? = Person(first: "Christy", last: "Moran", currentJob: lawyer, currentSpouse: nil, ageNow: 14)
let b : Person? = Person(first : "Thomas", last: "Olson", currentJob: ceoJob, currentSpouse: nil, ageNow: 23)
let c : Person? = Person(first : "Jim", last: "Olson", currentJob: ceoJob, currentSpouse: nil, ageNow: 27)
let d : Person? = Person(first : "Clare", last: "Malave", currentJob: doctorJob, currentSpouse: nil, ageNow: 17)
let e : Person? = Person(first : "Jen", last: "Malave", currentJob: lawyer, currentSpouse: nil, ageNow: 17)

printPerson("Rus", last : "Smith", currentJob : nil, currentSpouse : nil, ageNow : 14, updateSpouse : nil)
printPerson("Bob", last : "John", currentJob : lawyer, currentSpouse : nil, ageNow : 16, updateSpouse : a)
printPerson("Lesile", last : "Olson", currentJob : doctorJob, currentSpouse : nil, ageNow : 18, updateSpouse : b)
printPerson(nil, last : "Olson", currentJob : lawyer, currentSpouse : nil, ageNow : 18, updateSpouse : b)
printPerson("Lesile", last : "Olson", currentJob : doctorJob, currentSpouse : nil, ageNow : nil, updateSpouse : b)
printPerson("Lesile", last : nil, currentJob : lawyer, currentSpouse : nil, ageNow : 18, updateSpouse : b)

print(" ")
print("///Test Case for Family///")
print(" ")
print("")
print("///Household Income///")
print("")
checkHouseholdIncome(40000, person1 : a, person2 : b, person3 : c)
checkHouseholdIncome(120000, person1 : nil, person2 : b, person3 : c)
checkHouseholdIncome(120000, person1 : a, person2 : b, person3 : nil)
checkHouseholdIncome(110000, person1 : a, person2 : b, person3 : d)
checkHouseholdIncome(60000, person1 : a, person2 : b, person3 : e)
checkHouseholdIncome(40000, person1 : a, person2 : d, person3 : e)

let firstName : String? = nil
print("")
print("///Have Child///")
print("")
haveChild(a, person2: b, person3: c, firstName: "Daniel", lastName: "Dude")
haveChild(a, person2: b, person3: c, firstName: "Clare", lastName: "Dude")
haveChild(a, person2: b, person3: c, firstName: "Josh", lastName: "Dude")
haveChild(nil, person2: b, person3: c, firstName: "Daniel", lastName: "Dude")
haveChild(a, person2: b, person3: c, firstName: firstName, lastName: "Dude")



