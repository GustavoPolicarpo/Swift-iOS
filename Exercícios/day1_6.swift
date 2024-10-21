// ex 6.1
func avgGrade(grades: [Double]) -> Double{
  let avg = grades.reduce(0.0, +) / Double(grades.count);
  return avg
}

print(avgGrade(grades: [7.0, 8.0, 10.0]));

// ex 6.2
var numbers: [Int] = []
for _ in 1...10{
  let number = Int.random(in: 1..<10)
  numbers.append(number)
}

var evenNumbers = numbers.filter{$0 % 2 == 0}
var oddNumbers = numbers.filter{$0 & 1 != 0}
print(evenNumbers)
print(oddNumbers)

// ex 6.3
let estadosBrasileiros: [String: String] = [
    "AC": "Acre",
    "AL": "Alagoas",
    "AP": "Amapá",
    "AM": "Amazonas",
    "BA": "Bahia",
    "CE": "Ceará",
    "DF": "Distrito Federal",
    "ES": "Espírito Santo",
    "GO": "Goiás",
    "MA": "Maranhão",
    "MT": "Mato Grosso",
    "MS": "Mato Grosso do Sul",
    "MG": "Minas Gerais",
    "PA": "Pará",
    "PB": "Paraíba",
    "PR": "Paraná",
    "PE": "Pernambuco",
    "PI": "Piauí",
    "RJ": "Rio de Janeiro",
    "RN": "Rio Grande do Norte",
    "RS": "Rio Grande do Sul",
    "RO": "Rondônia",
    "RR": "Roraima",
    "SC": "Santa Catarina",
    "SP": "São Paulo",
    "SE": "Sergipe",
    "TO": "Tocantins"
]

func printStates(){
  for (sigla, estado) in estadosBrasileiros{
    if estado.count > 7{
      print("\(sigla) - \(estado)")
    }
  }
}

printStates()
