import 'package:flutter/material.dart';

Map<int, Color> get primaryColor {
  return {
    100: Color(0xFFE9E3EE),
    200: Color(0xFFAB73E2),
    300: Color(0xFF9363C4),
    400: Color(0xFF8054AD),
    500: Color(0xFF6B4492),
    800: Color(0xFF563675)
  };
}

class Label1 extends StatelessWidget {
  final String label;
  const Label1({
    Key key,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: Theme.of(context)
          .textTheme
          .headline5
          .copyWith(fontSize: 30, fontWeight: FontWeight.w700),
    );
  }
}

class MyOwnTile extends StatelessWidget {
  final IconData icon;
  final String label;
  const MyOwnTile({
    Key key,
    @required this.icon,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 18,
          ),
          SizedBox(
            width: 10,
          ),
          Text(label),
        ],
      ),
    );
  }
}

///make stless widget for this ones
///

Widget myAppBar(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: [
        Container(
          child: CircleAvatar(
            radius: 28,
            child: FlutterLogo(),
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                RichText(
                  text: TextSpan(
                      text: 'Hello, ',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: 'John Doe!',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        )
                      ]),
                ),
              ],
            ),
            Text(
              '21 February',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(color: Colors.grey[600]),
            ),
          ],
        )
      ],
    ),
  );
}

class InputFormGroup extends StatelessWidget {
  final String label;
  final Widget child;
  const InputFormGroup({this.label, this.child});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label ?? 'no caption!!',
          style: Theme.of(context)
              .textTheme
              .subtitle1
              .copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        child
      ],
    );
  }
}

class LabelTextFormField extends StatelessWidget {
  final String label;
  const LabelTextFormField({this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label ?? 'no caption!!',
          style: Theme.of(context)
              .textTheme
              .subtitle1
              .copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        ContainerInputs(
          TextFormField(
            decoration: InputDecoration(border: InputBorder.none),
          ),
        )
      ],
    );
  }
}

class ContainerInputs extends StatelessWidget {
  final Widget widget;
  final double height;
  ContainerInputs(this.widget, {this.height}) : assert(widget != null);
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: height,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: Color(0x05764ba2),
        border: Border.all(
          color: Color(0xAA764ba2),
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: widget,
    );
  }
}
