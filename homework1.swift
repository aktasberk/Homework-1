# Homework-1


    //1-) Functions that are overloading eachother
   

    func calculateSomething(x: Int) -> Int
    {
        return (x * x) + x
    }
    
    func calculateSomething(x: Double, y: Double, z: Double) -> Double
    {
        return (x * y) * z
    }
    
    //2-) Function which has default parameter value
    
    func callMyName(myName: String) -> String
    {
        return (myName)
    }
    
    //3-) Write a function which has one parameter and one variadic parameter.

    func nickNames(count: Int, names: String...)
    {
        print("Total name count \(count) and names are \(names) ")
    }
    
    //4-) Write a function which has ignored external parameter name.
    
    func ignoredParam(_ c: String)
    {
        print("Underscore means it is an ignored parameter.")
    }
    
    //5-) Write a function inside a function.
    
    func innerFunction(){
        print("INSIDE A SIMULATION")
    }
    func outerFunction(){
        print("YOU'RE IN A SIMULATION")
        innerFunction()
    }
    
    //6-) Write a recursive function.
    
    func countDown(number: Int)
    {
        print(number)
        if number > 0{
         countDown(number: number - 1)
        }
    }
    
    //7-) Write typealias for a function type.
    
   
    typealias someAlias = String

    func printThese(parameter: someAlias){
        print("Typealias rocks!")
    }
    
    //8-) Pass function as a value to another function.
    
    func sum(variable1: Int, variable2: Int) -> Int {
        return variable1 + variable2
    }
    
    ///////////////////
    
        
        //Call 1
        let resultOfFunc1 = calculateSomething(x: 4.2, y: 5.6, z: 7.4)
        let resultOfFunc2 = calculateSomething(x: 5)
        print(resultOfFunc1)
        print(resultOfFunc2)
        
        //Call 2
        let whatsMyName = callMyName(myName: "Berk")
        print(whatsMyName)
        
        //Call 3
        nickNames(count: 4, names: "Berk", "Cenk", "Ersan", "Nazlı")
        
        //Call 4
        ignoredParam("Explanation")
        
        //Call 5
        outerFunction()
        
        //Call 6
        countDown(number: 7)
        
        //Call 7
        printThese(parameter: "sample")
        
        //Call 8
        let toplama: (Int, Int) -> Int = sum
        print("Result = \(toplama(15,97))")
        
        

