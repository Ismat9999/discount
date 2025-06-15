import 'package:flutter/material.dart';
import 'home_page.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashPageState();
}
class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }
  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
                width: 80,
                child: Image(image: AssetImage("assets/images/logo1.png"),fit: BoxFit.cover,)),
            Text("Chegirma",style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
