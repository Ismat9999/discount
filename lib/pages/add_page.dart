import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text("Add",style: TextStyle(color: Colors.white),),
      ),
      body: Center(child: Text("Add Page"),),
    );
  }
}
