// ex 8.1
struct Calculadora{
  var num1: Double
  var num2: Double

  init(num1: Double, num2: Double){
    self.num1 = num1;
    self.num2 = num2;
  }

  func Somar() -> Double{
    return num1 + num2;
  }

  func Subtrair() -> Double{
    return num1 - num2;
  }

  func Multiplicar() -> Double{
    return num1 * num2;
  }

  func Dividir() -> Double{
    return num1 / num2;
  }
};

var calculadora = Calculadora(num1: 10, num2: 20);

print("Somar \(calculadora.Somar())");
print("Subtrair \(calculadora.Subtrair())");
print("Multiplicar \(calculadora.Multiplicar())");
print("Dividir \(calculadora.Dividir())");