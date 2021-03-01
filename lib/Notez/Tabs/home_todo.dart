import 'package:create_notez/Notez/notez_analysis.dart';
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
          NotezAnalyzer(),
          OnGoingTask(),
          TodaysPlan(),
        ],
      ),
    );
  }
}
