import 'package:flutter/material.dart';
import 'screens/counter_screen.dart';
import 'screens/screen1.dart';
import 'screens/screen2.dart';
import 'screens/screen3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi-Screen App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/counter': (context) => CounterScreen(),
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the Home Screen!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/counter'),
              child: Text('Go to Counter'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/screen1'),
              child: Text('Go to Screen 1'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/screen2'),
              child: Text('Go to Screen 2'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/screen3'),
              child: Text('Go to Screen 3'),
            ),
          ],
        ),
      ),
    );
  }
}
