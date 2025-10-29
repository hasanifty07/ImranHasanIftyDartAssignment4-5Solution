import "dart:io";
void main() {
  for (int i = 1; i <= 100; i++) {
    File file = File("file$i.txt");
    file.writeAsStringSync("Content for file number $i.");
  }
  print("Successfully created 100 file.");
}