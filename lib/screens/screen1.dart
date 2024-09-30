import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen1')),
      body: Center(
          child: Text('This is Screen 1', style: TextStyle(fontSize: 24))),
    );
  }
}
