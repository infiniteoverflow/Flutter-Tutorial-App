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
            )
        )
    );
  }
}
