import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text("Profile",style: TextStyle(color: Colors.white),),
      ),
      body: Center(child: Text("Profile Page"),),
    );
  }
}
