import 'package:flutter/material.dart';

import '../account_edit.dart';
import '../global_widget.dart';

class TodoSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: primaryColor[100],
          width: double.infinity,
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Center(
            child: Text(
              'Settings',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/Images/profile.jpg'),
                ),
                Positioned(
                  bottom: 20,
                  right: -5,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      // border: Border.all(color: Colors.amber, width: 5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Theme.of(context).accentColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Teecodex',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 10)
          ],
        ),
        createTile(
          Icons.account_box_outlined,
          'Edit account',
          onPress: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext contex) => AccountEdit()));
          },
        ),
        createTile(Icons.category_outlined, 'Manage category'),
        createTile(Icons.lock_open_outlined, 'Change password'),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ListTile(
            leading: Icon(Icons.wb_sunny_outlined),
            title: Text('Dark mode'),
            tileColor: primaryColor[100],
            trailing: Switch(
              onChanged: (value) {},
              value: true,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            tileColor: primaryColor[100],
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Take Notez',
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'OpenSans'),
                ),
                SizedBox(height: 5),
                Text(
                  'version 1.1',
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'OpenSans'),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  ListTile createTile(IconData leadIcon, String title, {Function onPress}) {
    return ListTile(
        onTap: onPress ?? () {},
        leading: Icon(leadIcon),
        title: Text(title),
        tileColor: primaryColor[600],
        trailing: Icon(Icons.arrow_forward_ios_outlined));
  }
}
