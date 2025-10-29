import "dart:io";
void main() {
  String fileName = "hello.txt";
  String friendName = "\nNafis Mahmud";
  File file = File(fileName);
  file.writeAsStringSync(friendName, mode: FileMode.append);
  print("Successfully appended \"Nafis Mahmud\" to \"$fileName\".");
}