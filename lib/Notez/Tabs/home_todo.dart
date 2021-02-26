import 'package:flutter/material.dart';
import '../favourite_task.dart';
import '../global_widget.dart';
import '../todays_plan.dart';

class HomeTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          myAppBar(context),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Placeholder(),
            ),
          ),
          OnGoingTask(),
          TodaysPlan(),
        ],
      ),
    );
  }
}
