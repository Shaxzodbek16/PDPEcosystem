import 'dart:io';
import 'package:yaml/yaml.dart';
import 'package:yaml_writer/yaml_writer.dart';

class TodoManager {
  final String filePath;
  List<Map<String, dynamic>> todos = [];
  int _nextId = 1;

  TodoManager(this.filePath) {
    _readFromFile();
  }

  void _readFromFile() {
    final file = File(filePath);
    if (file.existsSync()) {
      final yamlString = file.readAsStringSync();
      final yamlContent = loadYaml(yamlString);
      if (yamlContent != null && yamlContent is YamlList) {
        todos = List<Map<String, dynamic>>.from(
          yamlContent.map((e) => Map<String, dynamic>.from(e as Map)),
        );
        if (todos.isNotEmpty) {
          _nextId = todos.map((todo) => todo['id'] as int).reduce((a, b) => a > b ? a : b) + 1;
        }
      }
    }
  }

  void _writeToFile() {
    final yamlWriter = YAMLWriter();
    final yamlString = yamlWriter.write(todos);
    File(filePath).writeAsStringSync(yamlString);
  }

  void create(String title, bool status) {
    final todo = {'id': _nextId++, 'title': title, 'status': status};
    todos.add(todo);
    _writeToFile();
  }

  List<Map<String, dynamic>> read() {
    return todos;
  }

  void update(String title, Map<String, dynamic> updatedTodo) {
    final index = todos.indexWhere((todo) => todo['title'] == title);
    if (index != -1) {
      updatedTodo['id'] = todos[index]['id']; // Preserve the original id
      todos[index] = updatedTodo;
      _writeToFile();
    }
  }

  void delete(String title) {
    todos.removeWhere((todo) => todo['title'] == title);
    _writeToFile();
  }
}
