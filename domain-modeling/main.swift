import Foundation

print("///")
print("Test Case for Money Value Type")
print("///")
print("Conversion Test Case")
print("///")
var money1 = Money(amount: 12.31, currency: "USD")
print("Current Test Case is for \(money1.amount!) \(money1.currency!)")
money1.convertMoney("GBP")
print("Convert to GBP = \(money1.amount!) \(money1.currency!)")
money1.convertMoney("CAN")
print("Convert to CAN = \(money1.amount!) \(money1.currency!)")
money1.convertMoney("EUR")
print("Convert to EUR = \(money1.amount!) \(money1.currency!)")
money1.convertMoney("YUAN")
print("///")
print("Addition Test Case")
print("///")
var money2 = Money(amount: 43.12, currency: "CAN")
var money3 = Money(amount: 43.12, currency: "CAN")
var money4 = Money(amount: 43.12, currency: "EUR")
var money5 = Money(amount: 43.12, currency: "EUR")
money2.addMoney(30.21, tCurrency: "USD")
money4.addMoney(30.21, tCurrency: "GBP")
print("Addition of 43.12 CAN and 30.21 USD is \(money2.amount!) \(money2.currency!)")
print("Addition of 43.12 EUR and 30.21 GBP is \(money4.amount!) \(money4.currency!)")
print("///")
print("Subtraction Test Case")
print("///")
money3.subMoney(30.21, tCurrency: "USD")
money3.subMoney(30.21, tCurrency: "GBP")
print("Subtraction of 43.12 CAN and 20.12 USD is \(money3.amount!) \(money3.currency!)")
print("Subtraction of 43.12 EUR and 20.12 GBP is \(money5.amount!) \(money5.currency!)")
print("///")
print("Nil Test Case")
print("///")
var nilAmount : Double?
var nilCurrency : String?
nilAmount = nil
nilCurrency = "USD"
var money6 = Money(amount: nilAmount, currency: nilCurrency)
print("Converting nil amount of money")
money6.convertMoney("USD")
money6.addMoney(12.32, tCurrency: "USD")
money6.subMoney(12.31, tCurrency: "USD")
print("")
nilAmount = 12.3
nilCurrency = nil
var money7 = Money(amount: nilAmount, currency: nilCurrency)
print("Converting nil currency type")
money7.convertMoney("USD")
money7.addMoney(12.32, tCurrency: "USD")
money7.subMoney(12.31, tCurrency: "USD")
print(" ")
print("///")
print("Test Case for Job Class")
print("///")
let teacher = Job(title: "Teacher", salary: 20, type : "hourly")
let doctor = Job(title: "Doctor", salary: 100000, type : "yearly")
let ceo = Job(title: "CEO", salary: 1000000, type : "yearly")
print("The \(teacher.jobTitle!) earns $\(teacher.jobSalary!) per hour")
var teacherIncome = teacher.calculateIncome(300)
print("The Income for a \(teacher.jobTitle!) at $\(teacher.jobSalary!) per hour at 300 hours is $\(teacherIncome)")
print("The \(doctor.jobTitle!) earns \(doctor.jobSalary!) per year")
var teacherRaise = teacher.raise(20)
print("The 20% Raise for a \(teacher.jobTitle!) at $\(teacher.jobSalary!) per hour is $\(teacherRaise)")
var doctorIncome = doctor.calculateIncome(300)
print("The Income for a \(doctor.jobTitle!) at $\(doctor.jobSalary!) per year at 300 hours is $\(doctorIncome)")

print(" ")
print("///")
print("Test Case for Person Class")
print("///")
let a = Person(first: "A", last: "B", currentJob: teacher, currentSpouse: nil, ageNow: 21)
let b = Person(first: "C", last: "D", currentJob: doctor, currentSpouse: a, ageNow: 24)
let c = Person(first: "E", last: "F", currentJob: ceo, currentSpouse: b, ageNow: 25)
a.printString()
b.printString()

print(" ")
print("///")
print("Test Case for Family Class")
print("///")
var family = Family(familyMembers: [a, b, c])
let familyLegal = family.checkLegal()
print("Family is \(familyLegal!)")
let familyIncome = family.householdIncome()
print("Family has income of \(familyIncome)")
family.haveChild("Ba", lastName: "By")

print("Family Members")
for (var index = 0; index < family.members!.count; index++) {
    family.members![index].printString()
}