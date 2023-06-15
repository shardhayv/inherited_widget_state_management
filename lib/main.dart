import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: StateManagement(),
    ),
  );
}

class StateManagement extends StatefulWidget {
  const StateManagement({super.key});

  @override
  State<StateManagement> createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {
  String title = 'Homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            title = DateTime.now().toIso8601String();
          });
        },
        child: Container(
          color: Colors.grey,
        ),
      ),
    );
  }
}
