import 'package:flutter/material.dart';

// Next tasks have been done in the VS code environment and android emulator
// 1) Install Flutter SDK and necessary software (Android Studio or VS Code with Flutter/Dart plugins).
// 2) Set up Android emulator or connect a real device to run applications.
// 3) Create a new Flutter project (via command line flutter create or IDE tools).

// 5) Run the application on emulator/device - "Hello, Flutter!" should be displayed on screen.
// 6) Change the text in the Text widget (for example, to "Hello, Flutter!!!") and apply Hot Reload to instantly see the update.
// 7) Perform Hot Restart (full restart) and make sure the application starts from the initial state.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Flutter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter lesson 9 - Home work'),
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
  int _counter = 0;

 
  @override
  Widget build(BuildContext context) {
// 4) Open lib/main.dart file, remove the template counter code and display "Hello, Flutter!" text on screen (use MaterialApp -> Scaffold -> Center -> Text). 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Hello, Flutter!'),
          ],
        ),   
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
