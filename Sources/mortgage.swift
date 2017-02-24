import Foundation

public struct mortgage {
    public let interest:Double //monthly interest rate
    public let balance:Double //full amount of the loan
    public let period:Double // number of months for the loan
    
    public init(_ apr:Double, _ balance:Double, _ period:Double){
        self.interest = (apr / 100 / 12)
        self.balance = balance
        self.period = period
    }
    
    public func print_mort(){
        let first = interest * pow(1+interest,period) //first racket formula
        let second = pow(1+interest,period) - 1 //second bracket formula
        let result = balance * ( first / second ) //calculation result
        let resultString = round(result*100) / 100 //result rounded to two decimals
        
        print(" \n ") //added blank lines for a cleaner printout
        print("Mortgage Calculations")
        print("Period in Months: \(period)")
        print("Balance: $\(balance)")
        print("Monthly Interest Rate: \(interest * 100)%")
        print("Monthly Mortgage Payment:  $\(resultString)")
        print(" \n ") //added blank lines for a cleaner printout
    }
}

