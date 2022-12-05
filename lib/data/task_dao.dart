import 'package:first_flutter_project/components/Task.dart';
import 'package:first_flutter_project/data/database.dart';
import 'package:sqflite/sqflite.dart';

class TaskDao {
  static const String tableSql = 'CREATE TABLE $_tablename('
      '$_name TEXT, '
      '$_difficulty INTEGER, '
      '$_image TEXT)';

  static const String _tablename = 'TaskTable';
  static const String _difficulty = 'Difficulty';
  static const String _name = 'Name';
  static const String _image = 'Image';

  save(Task tarefa) async {

  }

  Future<List<Task>> findAll() async {
    print('Acessando o findAll');
    final Database bancoDeDados = await getDatabase();
    final List<Map<String, dynamic>> result = await bancoDeDados.query(
        _tablename);
    print('procurando dados no banco de dados... encontrado : $result');
    return toList(result);
  }

  List<Task> toList(List<Map<String, dynamic>> mapaDeTarefas) {
    print('Convertendo To List:');
    final List<Task>tarefas = [];
    for (Map<String, dynamic> linha in mapaDeTarefas) {
      final Task tarefa = Task(linha[_name], linha[_image], linha[_difficulty]);
      tarefas.add(tarefa);
    }
    print('Lista de tarefas $tarefas');
    return tarefas;
  }

  Future<List<Task>> find(String nomeDaTarefa) async {
    print('acessando o find');
    final Database bancoDeDados = await getDatabase();
    final List<Map<String, dynamic>> result = await bancoDeDados.query(
      _tablename, where: '$_name = ?', whereArgs: [nomeDaTarefa],);
    print('Tarefa encontrada: ${toList(result)}');
    return toList(result);
  }

  delete(String NomeDaTarefa) async {}
}