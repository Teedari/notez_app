import 'package:flutter/material.dart';

class CatergoryButtons extends StatelessWidget {
  final int index;
  const CatergoryButtons({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 80,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.teal, width: 2),
          // color: Colors.teal,
          borderRadius: BorderRadius.circular(30)),
      // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.only(right: 10),
      // margin: EdgeInsets.symmetric(horizontal: 5),
      child: FlatButton(
        onPressed: () {},
        // child: FittedBox(
        child: Text(
          'category $index',
          style: TextStyle(
            color: Colors.teal[500],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // ),
    );
  }
}
