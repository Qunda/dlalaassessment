import 'package:flutter/material.dart';
import 'package:myapp/page-1/phone.dart';
import 'package:myapp/utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;

  runApp(
    MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const baseWidth = 393;
    final fem = MediaQuery.of(context).size.width / baseWidth;
    const primaryColor = Color.fromRGBO(235, 159, 44, 1);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_box_rounded),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        backgroundColor: primaryColor,
      ),
      body: const Scene(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('How can we help?'),
                content: const TextField(
                  maxLines: null, // Allow multiline input
                ),
                actions: [
                  ElevatedButton(
                    child: const Text('OK'),
                    onPressed: () {
                      // Perform actions with the entered text
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        backgroundColor: primaryColor,
        child: const Icon(Icons.chat_bubble_sharp),
      ),
    );
  }
}
