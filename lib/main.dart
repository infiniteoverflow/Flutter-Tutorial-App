import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/hivePreferences.dart';
import 'package:flutter_tutorial/screens/homeScreen.dart';
import 'package:flutter_tutorial/screens/introScreen.dart';
import 'package:flutter_tutorial/screens/splashScreen.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path;

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  final directory = await path.getApplicationDocumentsDirectory();
  Hive.init(directory.path);

  Hive.registerAdapter(HivePreferencesAdapter());
  final result = await Hive.openBox('preferences');

  try {
    final r = result.getAt(0) as HivePreferences ;
  } on RangeError catch (e) {
    print('Exception');
    final r = result.add(HivePreferences(
        isFirstTime: true,
        darkTheme: false
    ));
  }

  final r = result.getAt(0) as HivePreferences ;
  print("First Time : ${r.isFirstTime}");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Future checkForIntro() async {
    HivePreferences hivePreferences = Hive.box('preferences').getAt(0) as HivePreferences;
    return hivePreferences.isFirstTime;
  }

  setisFirstTime() {
    Hive.box('preferences').putAt(0, HivePreferences(isFirstTime: false));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          splash: SplashScreen(),
          splashIconSize: 260,
          // pageTransitionType: ,
          nextScreen: FutureBuilder(
              future: checkForIntro(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data == false) {
                    return HomeScreen();
                  } else {
                    setisFirstTime();
                    return IntroScreen();
                  }
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }
          )
      )
    );
  }
}
