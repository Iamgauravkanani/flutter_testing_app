import 'package:flutter/material.dart';
import 'package:flutter_test_app/Class/increment_class.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Increment c1 = Increment();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            c1.increment();
          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Flutter Unit Testing"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "${c1.count}",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
