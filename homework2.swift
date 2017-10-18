
// 1. Write a function that returns tuple
func getTime() -> (Int, Int, Int) {
    let hour = 2
    let minute = 35
    let second = 47
    return (hour, minute, second)
}

let time = getTime()
print("Hour is \(time.0)")
print("Minute is \(time.1)")
print("Second is \(time.2)")
print("The time is now : \(time.0) hours \(time.1) minutes \(time.2) seconds")
print("End of Question 1")

// 2. Write a function that returns tuple with parameter labels.

func foodMenu() -> (foodType: String, drinkType: String, price: Int)
{
    let foodtype = "Burger"
    let drinkType = "Coca Cola"
    let price = 9
    
    return(foodtype, drinkType, price)
}

print(foodMenu())
print("End of Question 2")

// 3. Write a switch control that checks a tuple values and executes different cases.

typealias Grade = (examGrade: Int, expectedGrade: Int)

func grading(_ grades: Grade)
{
    switch grades
    {
    case let (examGrade, expectedGrade) where examGrade > expectedGrade:
        print("You are a successful student.")
    case let (examGrade, expectedGrade) where examGrade < expectedGrade:
        print("You should work better")
    default:
        print("Take this course again")
    }
}

let grade1: Grade = (59,20)
let grade2: Grade = (85,87)
grading(grade1)
grading(grade2)
print("-------End of Question 3-------")


// 4. Put the tuple type into typealias and use it in a function while returning.

typealias carDetails = ( brand: String, model: String, year: Int)

func getCarDetails(_ brand: String, _ model: String, _ year: Int) -> carDetails
    
{
    
    return (brand, model, year)
    
}

let car1 = getCarDetails("Mercedes","A Class", 2015)
let car2 = getCarDetails("Honda", "Civic", 2002)
print("Car brand : \(car1.brand) and model: \(car1.model) and year: \(car1.year)")
print(car2.brand)
print(car2.model)
print(car2.year)
print("-------End of Question 4------")


// 5. Create an array with 5 elements, different country cities are preferred.

var airportCodes: Array<String> =
    ["LAX",
     "JFK",
     "SFO",
     "IST",
     "LAS"
]

// 6. Loop over the created array and process the elements using for loop.
for callSigns in airportCodes
{
    print("Available flights to : \(callSigns)")
}

airportCodes.append("BJV") //New airport!

print("Number of airportst: \(airportCodes.count)")
print("++++")

airportCodes.remove(at: 3)

airportCodes.insert("DEN", at: 2)

for updatedList in airportCodes
{
    print("Updated list of available flights: \(updatedList)")
}

print("----------End of Question 6----------")



