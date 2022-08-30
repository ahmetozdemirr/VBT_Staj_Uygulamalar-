
import 'package:http/http.dart' as http;
import 'package:vbt_state_manangment2/todo/model/todo_model.dart';

class TodoService {
  Future<TodoModel> fetchTodo(String nu) async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/todos/$nu"));
          if (response.statusCode == 200) {
      return todoModelFromJson(response.body);
    } else {
      throw Exception("Datalar gelmedi");
    }
  }
}
