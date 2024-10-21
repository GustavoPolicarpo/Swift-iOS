// ex 5.1
func validateName(name: String?){
  print("\(name ?? "No name provided")")
}

validateName(name: "A")
validateName(name: nil)