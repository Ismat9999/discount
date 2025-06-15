import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text("Book",style: TextStyle(color: Colors.white),),
      ),
      body: Center(child: Text("Book Page"),),
    );
  }
}
