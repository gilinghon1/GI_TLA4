import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CounterScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final count = useState(0);

    void incrementCounter() => count.value++;
    void refreshCounter() => count.value = 0;
    void decrementCounter() => count.value--;

    return Scaffold(
      appBar: AppBar(title: Text('Counter Screen')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Score: ${count.value}', style: TextStyle(fontSize: 24)),
            SizedBox(width: 16),
            FloatingActionButton(
                onPressed: decrementCounter, child: Icon(Icons.remove)),
            SizedBox(width: 16),
            FloatingActionButton(
                onPressed: refreshCounter, child: Icon(Icons.restart_alt)),
            SizedBox(width: 16),
            FloatingActionButton(
                onPressed: incrementCounter, child: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
