import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'TodoProvider.dart';
import 'todo_next_screen.dart';

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<TodoProvider>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Todo App With Provider'),
        ),
        body: Consumer<TodoProvider>(builder: (_, state, __) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            child: ListView.builder(
              itemCount: state.list.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return ReviewTodo(
                          id: state.list[index].id,
                          delete: pro.removeItem,
                        );
                      }));
                    },
                    leading: Text('$index'),
                    title: Text(state.list[index].name),
                    tileColor: Colors.lightBlue,
                  ),
                );
              },
            ),
          );
        }));
  }
}

class MyListTileView extends StatelessWidget {
  final List list;
  const MyListTileView({
    Key key,
    this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return ReviewTodo(
                  id: list[index].id,
                  delete: () {},
                );
              }));
            },
            leading: Text('$index'),
            title: Text(list[index].name),
            tileColor: Colors.lightBlue,
          ),
        );
      },
    );
  }
}
