import 'package:flutter/material.dart';

import 'global_widget.dart';

class AccountEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BuildAppBar(),
            Container(
              // color: Colors.grey[100],
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Hero(
                        tag: 'profile',
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return Scaffold(
                                    body: Center(
                                      child: Hero(
                                        tag: 'profile',
                                        child: Container(
                                          height: 300,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'assets/Images/profile.jpg'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/Images/profile.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        width: 270,
                        child: Text(
                          'Enter your name and add an optional profile picture',
                          style: TextStyle(height: 1.5),
                          softWrap: true,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 15),
                    child: Text('Edit'),
                  ),
                  Divider(thickness: 2),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 0, bottom: 0),
                      border: InputBorder.none,
                      hintText: 'Teecodex',
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  Divider(thickness: 2),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 20, bottom: 20),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[400],
                width: 2,
              ),
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(left: 10),
            child: Center(
              child: Stack(
                //  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios_outlined, size: 20),
                      SizedBox(width: 10),
                      Text(
                        'settings',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  Center(
                    child: Text(
                      'Edit Account',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
