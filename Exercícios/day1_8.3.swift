// ex 8.3
struct Retangulo{
  var base: Double
  var altura: Double

  func calcularArea() -> Double{
    return base * altura;
  }

  func calcularPerimetro() -> Double{
    return (base + altura)*2.0;
  }
};

var retangulo = Retangulo(base: 2.0, altura: 3.0);
print("Area: \(retangulo.calcularArea())");
print("Perimetro: \(retangulo.calcularPerimetro())");
