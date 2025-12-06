import 'package:flutter/material.dart';

// Tasks lesson 10 - Home work:
// 1) Add a Text widget with a welcome message on the main screen (e.g., "Welcome to Flutter!").
// 2) Place an image below it using Image.network(...), specifying a URL to load the image from the internet.
// 3) Add an ElevatedButton below the image with text (e.g., "Press me"), which calls print() with a message to the console when pressed.
// 4) Wrap the text, image, and button in a Column for vertical layout of elements.
// 5) Add Padding (or padding property of a container) around elements to set margins.
// 6) Align the content on the screen to the center (use Center or mainAxisAlignment = MainAxisAlignment.center property of Column).
// 7) Run the application and make sure that text, image, and button are displayed correctly and respond to pressing.

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
      home: const MyHomePage(title: 'Flutter lesson 10 - Home work'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // 1) Welcome message
              const Text(
                'Добро пожаловать во Flutter!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              
              // 2) Image from the internet
              Image.network(
                'https://picsum.photos/300/200',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              
              // 3) Button with print action
              ElevatedButton(
                onPressed: () {
                  print('Кнопка нажата! Button pressed!');
                },
                child: const Text('Нажми меня'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
