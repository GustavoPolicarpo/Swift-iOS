// ex 8.2
class Restaurante{
  var nome: String
  var tipoComida: String
  var totalPedidos: Int

  init(nome: String, tipoComida: String){
    self.nome = nome;
    self.tipoComida = tipoComida;
    self.totalPedidos = 0;
  }

  func recebePedido() -> Int{
    totalPedidos += 1;
    return totalPedidos;
  }

  func calculaTotalPedidos() -> Double{
    let precoMedio = 35.0;
    return precoMedio * Double(totalPedidos);
  }
};

var restaurante = Restaurante(nome: "bra", tipoComida: "brasileira");

print(restaurante.nome);
print(restaurante.tipoComida);
print("Total de pedidos 01: \(restaurante.calculaTotalPedidos())");
_ = restaurante.recebePedido();
_ = restaurante.recebePedido();
print("Total de pedidos 02: \(restaurante.calculaTotalPedidos())");