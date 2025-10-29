
import "dart:io";
void main() {
  String fileName = "students.csv";
  List<Map<String, dynamic>> students = [
    {"name": "mozid", "age": 50, "address": "7/8,londoni road"},
    {"name": "Shahriar", "age": 65, "address": "11/5,Borbazar"},
    {"name": "Safwan Faz", "age": 300, "address": "5/9,jalalabad"}
  ];
  
  String csvContent = "Name,Age,Address\n";
  for (var student in students) {
    csvContent += "${student["name"]},${student["age"]},${student["address"]}\n";
  }

  File file = File(fileName);
  try {
    file.writeAsStringSync(csvContent);
    print("Data successfully written to \"$fileName\".\n");
    
    List<String> lines = file.readAsLinesSync();
    print("--- Reading Data from \"$fileName\" ---");
    for (String line in lines) {
      print(line);
    }
  } 
  catch(e) {
    print("An error occurred during file operation: $e");
  }
}
