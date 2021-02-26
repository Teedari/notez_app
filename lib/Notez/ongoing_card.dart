import 'package:flutter/material.dart';

import 'global_widget.dart';

class OngoingCardUI extends StatelessWidget {
  const OngoingCardUI({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFCFCFC),
      child: Container(
        height: 130,
        width: (MediaQuery.of(context).size.width / 2),
        child: Row(
          children: [
            Container(
              width: 30,
              height: 130,
              color: Colors.amber,
              child: Center(
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Container(
                    child: Text(
                      '12:00',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Writing a book',
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                        fontWeight: FontWeight.w700,
                        color: Colors.amber,
                        fontSize: 18,
                        fontFamily: 'OpenSans'),
                  ),
                  SizedBox(height: 10),
                  MyOwnTile(icon: Icons.category_outlined, label: 'Education'),
                  MyOwnTile(
                    icon: Icons.calendar_today_outlined,
                    label: DateTime.now().toString().substring(0, 10),
                  ),
                  MyOwnTile(
                    icon: Icons.arrow_upward_outlined,
                    label: 'Easy',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
