import "dart:io";
void main() {
  Directory currentDir = Directory.current;
  print("Current Working Directory: \"${currentDir.path}\"");
}