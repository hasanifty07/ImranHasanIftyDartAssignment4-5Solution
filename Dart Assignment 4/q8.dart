import "dart:io";

void main() {
  List<String> tasks = [];
  String? userInput;

  while (true) {
    print("\n--- TO-DO APPLICATION ---");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");
    stdout.write("Enter your choice (1-4): ");
    
    String? choice = stdin.readLineSync();
    
    if (choice == "1") {
      stdout.write("Enter the task to add: ");
      userInput = stdin.readLineSync();
      if (userInput != null && userInput.isNotEmpty) {
        tasks.add(userInput);
        print("\"$userInput\" added.");
      } else {
        print("Task cannot be empty.");
      }
    } else if (choice == "2") {
      if (tasks.isEmpty) {
        print("No tasks to remove.");
      } else {
        print("\nCurrent Tasks:");
        for (int i = 0; i < tasks.length; i++) {
          print("${i + 1}. ${tasks[i]}");
        }
        stdout.write("Enter the number of the task to remove: ");
        String? indexInput = stdin.readLineSync();
        
        try {
          int indexToRemove = int.parse(indexInput!) - 1;
          if (indexToRemove >= 0 && indexToRemove < tasks.length) {
            String removedTask = tasks.removeAt(indexToRemove);
            print("\"$removedTask\" removed.");
          } else {
            print("Invalid task number.");
          }
        } catch (e) {
          print("Invalid input.");
        }
      }
    } else if (choice == "3") {
      if (tasks.isEmpty) {
        print("Your to-do list is empty! Add a task.");
      } else {
        print("\n--- YOUR TASKS ---");
        for (int i = 0; i < tasks.length; i++) {
          print("${i + 1}. ${tasks[i]}");
        }
      }
    } else if (choice == "4") {
      print("Exiting application.goodbye!");
      break;
    } else {
      print("Invalid choice.please enter a number between 1 and 4.");
    }
  }
}