import "dart:io";
void main() {
  String fileName = "hello_copy.txt";
  File file = File(fileName);
  if (file.existsSync()) {
    file.deleteSync();
    print("Successfully deleted \"$fileName\".");
  }
  else 
  {
    print("\"$fileName\"does not exists,no action taken.");
  }
}