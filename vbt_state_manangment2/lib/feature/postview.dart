import 'package:flutter/material.dart';
import 'package:vbt_state_manangment2/feature/model/post_model.dart';
import 'package:vbt_state_manangment2/feature/service/post_service.dart';

class PostPage extends StatefulWidget {
  PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final PostService _postService = PostService();
  List<PostModel>? _postModel;
  bool isLoading = false;

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  Future<void> init() async {
    _postModel = await _postService.fetchPost();
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
        title: Text("HTTP Projesi"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          init();
        },
        child: Icon(Icons.star),
      ),
      body: isLoading
          ? ListView.builder(
              itemCount: _postModel?.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                      title: Text(
                        _postModel?[index].title ?? "Data yoktur",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(_postModel?[index].body ?? "Data yoktur"),
                      leading: Text(
                          _postModel?[index].id.toString() ?? "Data yoktur")),
                );
              })
          : LinearProgressIndicator(),
    );
  }
}
