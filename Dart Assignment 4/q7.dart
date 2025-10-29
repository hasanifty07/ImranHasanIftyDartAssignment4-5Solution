void main() {
  Map<String, String> contactInfo = {
    "name": "Anika",
    "phone": "01700000000",
    "city": "Fenchugonj",
    "zip": "3110",
    "role": "faculty member",
  };
  Iterable<String> keysWithLengthFour = contactInfo.keys.where(
    (key) => key.length == 4
  );
  print("All contact keys: ${contactInfo.keys.toList()}");
  print("Keys with length 4: ${keysWithLengthFour.toList()}");
}