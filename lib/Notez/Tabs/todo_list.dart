import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../global_widget.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            CreateNewTodo(),
            Container(
              padding: EdgeInsets.only(
                right: 10,
                top: 20,
              ),
              child: Column(
                children: [
                  LabelTextFormField(
                    label: 'Topic',
                  ),
                  InputFormGroup(
                      label: 'Content',
                      child: Container(
                        height: MediaQuery.of(context).size.height - 400,
                        child: ContainerInputs(
                          TextFormField(
                            initialValue: 'We serve the living God',
                            maxLines: 50,
                            keyboardType: TextInputType.multiline,
                            style: Theme.of(context).textTheme.bodyText1,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                      )),
                  InputFormGroup(
                      label: 'Category',
                      child: ContainerInputs(DropdownButtonFormField(
                        onChanged: (val) {
                          print(val);
                        },
                        decoration: InputDecoration(
                            hintText: 'Category', border: InputBorder.none),
                        items: List.generate(3, (index) {
                          return DropdownMenuItem(
                            value: 'Category ',
                            child: Text('Category $index'),
                          );
                        }),
                      ))),
                  Container(
                    height: 60,
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'I\'m awesome',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CreateNewTodo extends StatelessWidget {
  const CreateNewTodo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              border:
                  Border.all(color: Theme.of(context).primaryColor, width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Hello'),
                ));
                //Scaffold.of(context).openDrawer();
              },
              icon: Icon(CupertinoIcons.add),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Center(
                  child: Text(
                'Create New Todo',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(color: Colors.white, fontSize: 20),
              )),
            ),
          )
        ],
      ),
    );
  }
}
