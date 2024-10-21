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

var gerente = Gerente(nome: "João", salario: 1000, departamento: "Vendas");

print(gerente.nome);
print(gerente.salario);
print(gerente.departamento);