import 'package:create_notez/Notez/widgets/category_buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NotezView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  child: CatergoryButtons(
                    index: index + 1,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
