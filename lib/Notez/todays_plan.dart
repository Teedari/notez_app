import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global_widget.dart';

class TodaysPlan extends StatelessWidget {
  const TodaysPlan({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        Label1(
          label: 'Today\'s Plan',
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 205,
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return plansContainerCard(context);
            },
          ),
        )
      ],
    );
  }

  Container plansContainerCard(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 4, top: 4),
      padding: EdgeInsets.only(left: 20),
      height: 60,
      decoration: BoxDecoration(
        color: Color(0x1Af4f4f4f4),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              'Workout',
              style: Theme.of(context).textTheme.subtitle2.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  fontFamily: 'OpenSans'),
            ),
          ),
          Row(
            children: [
              Text('Medium'),
              SizedBox(
                width: 10,
              ),
              Icon(CupertinoIcons.circle_grid_hex),
              SizedBox(width: 10),
            ],
          )
        ],
      ),
    );
  }
}
