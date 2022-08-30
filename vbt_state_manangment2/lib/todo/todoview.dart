import 'package:flutter/material.dart';
import 'package:vbt_state_manangment2/todo/model/todo_model.dart';
import 'package:vbt_state_manangment2/todo/service/todo_service.dart';

class TodoPage extends StatefulWidget {
  TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final TodoService _todoService = TodoService();
  TodoModel? _todoModel;
  bool isLoading = false;
  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  Future<void> init() async {
    _todoModel = await _todoService.fetchTodo("2");
    changeLoading();
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ToDo Http"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            init();
          },
          child: Icon(Icons.star),
        ),
        body: isLoading
            ? Card(
                child: Center(child: Text(_todoModel?.title ?? "BOŞTUR")),
              )
            : Center(child: CircularProgressIndicator()));
  }
}
