import 'package:create_notez/Notez/Tabs/notez_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Tabs/home_todo.dart';
import 'Tabs/todo_list.dart';
import 'Tabs/todo_settings.dart';

class BaseWidget extends StatefulWidget {
  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey _key = GlobalKey<State>();
    return DefaultTabController(
      key: _key,
      length: 5,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (BuildContext context) {
            //   return Scaffold(
            //     appBar: AppBar(),
            //   );
            // }));
          },
          child: Icon(Icons.ad_units),
        ),
        drawer: Drawer(),
        bottomNavigationBar: TabBar(
          indicatorWeight: 1,
          labelPadding: EdgeInsets.only(bottom: 8),
          tabs: [
            Tab(
                icon: Icon(
              CupertinoIcons.home,
              color: Theme.of(context).primaryColor,
            )),
            Tab(
              icon: Icon(
                CupertinoIcons.calendar,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Container(
              width: 50,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x44111111),
                      blurRadius: 8,
                      offset: Offset(-1, 5),
                    )
                  ]),
              child: Tab(
                icon: Icon(
                  CupertinoIcons.doc_on_clipboard,
                  color: Colors.white,
                ),
              ),
            ),
            Tab(
              icon: Icon(
                CupertinoIcons.person,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Tab(
              icon: Icon(
                CupertinoIcons.settings,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              NotezView(),
              HomeTodo(),
              TodoSettings(),
              TodoList(),
              Center(
                child: Text('Tab 4'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
