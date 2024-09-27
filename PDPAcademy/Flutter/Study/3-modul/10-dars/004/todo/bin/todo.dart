import 'package:args/args.dart';
import 'package:todo/todo.dart';

void main(List<String> arguments) {
  print("Hello, Welcome to Todo CLI");
  final parser = ArgParser()
    ..addCommand('add')
    ..addCommand('list')
    ..addCommand('update')
    ..addCommand('help')
    ..addCommand('remove');

  final ArgResults argResults = parser.parse(arguments);

  switch (argResults.command?.name) {
    case 'add':
      add();
      break;
    case 'list':
      list();
      break;
    case 'update':
      update();
      break;
    case 'remove':
      remove();
      break;
    default:
      print('Invalid command');
      print(parser.usage);
      help();
  }
}
