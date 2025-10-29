void main() {
  Map<String, dynamic> personalData = {
    "name": "mozid",
    "address": "londoni road,pathantula",
    "age": 24,
    "country": "Bangladesh",
  };
  print("Initial Map: $personalData");
  personalData["country"] = "Bangladesh";
  print("\nMap after updating country: $personalData");
  print("\nPrinting Keys and Values:");
  for (String key in personalData.keys) {
    print("Key: $key, Value: ${personalData[key]}");
  }
}