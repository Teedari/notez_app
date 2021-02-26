import 'package:flutter/material.dart';

class ReviewTodo extends StatelessWidget {
  final int id;
  final Function delete;

  ReviewTodo({this.id, this.delete});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              child: Text('Delete'),
              onPressed: () {
                delete(id);

                // todoEvent.removeItem(id);
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
