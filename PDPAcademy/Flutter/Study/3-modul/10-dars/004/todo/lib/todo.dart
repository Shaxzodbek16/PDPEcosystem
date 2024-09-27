import 'dart:io';

import 'package:todo/storage.dart';

String path =
    '/Users/shaxzodbekmuxtorov/Developer/PDPEcosystem/PDPAcademy/Flutter/Study/3-modul/10-dars/004/todo/storage/todo.yaml';

final manager = TodoManager(path);

String getTitle() {
  while (true) {
    String? title = stdin.readLineSync();
    if (title == null) {
      print("Enter something");
      continue;
    }
    if (title.trim().isEmpty) {
      print("Not only white spaces");
      continue;
    }
    return title;
  }
}

void add() {
  print("Enter title for Todo: ");
  String title = getTitle();
  bool status = false;
  manager.create(title.trim(), status);
  print("Todo created successfully");
}

void list() {
  final todo = manager.read();
  if (todo.isEmpty) {
    print("Ops, You have not had todo yet.");
  }
  print("\n");
  for (final data in todo) {
    print(data["id"].toString() + '. ' + data["title"]);
    print(data["status"].toString() + '\n');
  }
}

void remove() {
  print("Enter title of Todo that you wanna delete: ");
  String title = getTitle();
  manager.delete(title);
  print("Todo delete successfully");
}

void update() {
  print("\nEnter old Todo title: ");
  String title = getTitle();
  for (final data in manager.read()) {
    if (data["title"] == title) {
      String newTitle = getTitle();
      bool newOption = option();
      manager.update(title, {"title": newTitle, "status": newOption});
      print("Updated successfully");
      return;
    }
  }
  print("Does not exist by $title todo");
}

void help() {
  String usage = '''
dart run todo <option> 
options = ["add", "list", "remove"]
  ''';
  print(usage);
}

bool option() {
  print("Select status[0/1][y/n][Y/N][yes/no][Yes/No]");
  while (true) {
    String? stringOption = stdin.readLineSync();
    if (stringOption == null) {
      print("Options must be one of [0/1][y/n][Y/N][yes/no][Yes/No].");
      continue;
    }
    if (stringOption.trim().isEmpty) {
      print("Options must be one of [0/1][y/n][Y/N][yes/no][Yes/No].");
    }

    List<String> yes = ["0", "y", "Y", "yes", "Yes"];
    List<String> no = ["1", "n", "N", "no", "No"];
    if (yes.contains(stringOption)) return true;
    if (no.contains(stringOption)) return false;
    print("Did not found one of [0/1][y/n][Y/N][yes/no][Yes/No].");
  }
}
