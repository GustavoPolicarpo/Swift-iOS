// ex 4.1
func isPrime(_ number: Int) -> Bool{
  if number <= 1{
    return false;
  }
  for i in 2..<number{
    if number % i == 0{
      return false;
    }
  }
  return true;
}

print(isPrime(1));
print(isPrime(4));
print(isPrime(7));


// ex 4.2
func splitBill(bill: Double, friends: Int = 1) -> Double{
  return bill * 1.1 / Double(friends);
}

var friends = 2, bill = 100.0;
print("Total bill is \(bill) and \(friends) friends are there, each one should pay \(splitBill(bill: bill, friends: friends))");

friends = 3; bill = 50.0;
print("Total bill is \(bill) and \(friends) friends are there, each one should pay \(splitBill(bill: bill, friends: friends))");