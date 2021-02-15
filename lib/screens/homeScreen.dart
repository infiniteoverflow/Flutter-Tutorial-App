import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/accounts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Image.asset(
                          'assets/icons/drawer.png'
                      ),
                    ),
                  );
                },
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          PageRouteBuilder(
                            pageBuilder: (c, a1, a2) => Accounts(),
                            transitionsBuilder: (c, anim, a2, child) =>
                                FadeTransition(opacity: anim, child: child),
                            // transitionDuration: Duration(milliseconds: 1000),
                          )
                      );
                    },
                    child: Image.asset(
                        'assets/icons/account.png'
                    ),
                  ),
                )
              ],
            ),
            drawer: Drawer(),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'What would you like to\nlearn today?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 7,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 1.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                            border: Border.all(
                                color: Colors.grey
                            )
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Image.asset(
                                    'assets/icons/dart.jpg'
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    0, 0, 100, 0),
                                child: Text(
                                  'DART',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 35,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 15,
                      ),
                      Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 7,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 1.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                            border: Border.all(
                                color: Colors.grey
                            )
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Image.asset(
                                    'assets/images/flutter_logo.png'
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 67, 0),
                                child: Text(
                                  'FLUTTER',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 35,
                                  ),
                                ),
                              )

                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
        )
    );
  }
}
