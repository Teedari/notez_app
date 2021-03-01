import '../Notez/widgets/category_buttons.dart';
import 'package:flutter/material.dart';

import 'global_widget.dart';

class OnGoingTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Label1(label: 'Favourite Category'),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                5,
                (index) => CatergoryButtons(index: index + 1),
              ),
            ),
          )
        ],
      ),
    );
  }
}
