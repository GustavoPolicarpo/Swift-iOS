// ex 8.4
class Empregado{
  var nome: String
  var salario: Double

  init(nome: String, salario: Double){
    self.nome = nome;
    self.salario = salario;
  }
};

class Gerente : Empregado{
  var departamento: String

  init(nome: String, salario: Double, departamento: String){
    self.departamento = departamento;
    super.init(nome: nome, salario: salario);
  }
};

class Vendedor : Empregado{
  func percentualComissao(totalVendas: Int) -> Double{
    let comissao = 1.1;
    let valor = 50.0;
    return Double(totalVendas) * comissao * valor;
  }
};

var vendedor = Vendedor(nome: "Wagner", salario: 500);

print(vendedor.nome);
print(vendedor.salario);
print("Total para \(10) vendas = \(vendedor.percentualComissao(totalVendas: 10))");