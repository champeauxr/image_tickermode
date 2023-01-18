import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _tickerEnabled = false;

  void onTickerEnabledChanged(bool value) {
    setState(() {
      _tickerEnabled = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            TickerMode(
              enabled: _tickerEnabled,
              child: Image.asset('assets/17644.png'),
            ),
            const Text('Image by rawpixel.com on Freepik.com'),
            const SizedBox(height: 32),
            Row(
              children: [
                const Text('Ticker Mode'),
                Switch(value: _tickerEnabled, onChanged: onTickerEnabledChanged)
              ],
            )
          ],
        ),
      ),
    );
  }
}
