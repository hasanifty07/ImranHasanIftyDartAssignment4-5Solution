import "dart:io";
void main() {
  String originalFile = "hello.txt";
  String newFile = "hello_copy.txt";
  File filee = File(originalFile);
  filee.copySync(newFile);
  print("Successfully copied\"$originalFile\"to\"$newFile\".");
}