import "dart:io";
void main() {
  String fileName = "hello.txt";
  String myName = "Imran Hasan Ifty";
  File file = File(fileName);
  file.writeAsStringSync(myName);
  print("Successfully wrote \"$myName\" to \"$fileName\".");

}
