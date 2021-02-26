import 'package:flutter/material.dart';

import 'todo_base.dart';

class NotezApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF764ba2),
        primaryColorLight: Color(0xFFC489FF),
        primaryColorDark: Color(0xFF563675),
        fontFamily: 'Ubuntu',
        scaffoldBackgroundColor: Colors.white,
      ),
      // darkTheme: ThemeData.dark(),
      // themeMode: ThemeMode.dark,
      // home: SplashScreen(),
      home: BaseWidget(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0x09764BA2),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.supervised_user_circle_rounded,
                          size: 60, color: Theme.of(context).primaryColor),
                    ),
                    SizedBox(
                      height: 200,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Taking Your task to the next level',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Wow! You have completed all the task, this week was just a piece of cake for you',
                            style: TextStyle(
                                wordSpacing: 3,
                                letterSpacing: 1,
                                color: Colors.grey[600]),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
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
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
