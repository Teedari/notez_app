import 'package:flutter/material.dart';

class NotezAnalyzer extends StatefulWidget {
  @override
  _NotezAnalyzerState createState() => _NotezAnalyzerState();
}

class _NotezAnalyzerState extends State<NotezAnalyzer> {
  var landScape = true;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(builder: (context, constraints) {
      return Container(
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NewWidget(constraints: constraints),
              NewWidget(constraints: constraints),
              NewWidget(constraints: constraints),
              NewWidget(constraints: constraints),
              NewWidget(constraints: constraints),
            ],
          ),
        ),
      );
    }));
  }
}

class NewWidget extends StatelessWidget {
  final BoxConstraints constraints;
  const NewWidget({
    Key key,
    this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(constraints.maxHeight);
    final barHeight = constraints.maxHeight - 50;
    return Container(
      height: constraints.maxHeight,
      child: Row(
        children: [
          RotatedBox(quarterTurns: -1, child: Text('category 1')),
          Container(
            width: 50,
            child: Stack(
              children: [
                Positioned(
                  bottom: 2,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      // color: Colors.teal[200],
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Text('0%')),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 19,
                  child: Container(
                    width: 20,
                    height: barHeight,
                    child: Stack(
                      children: [
                        Container(
                          // color: Colors.teal,
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        FractionallySizedBox(
                          heightFactor: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.teal[200],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
