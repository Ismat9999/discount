import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Map<String, dynamic>> topCategories = [
    {'title': 'Жильё для поездки', 'icon': Icons.backpack, 'page': TopPage(title: 'Жильё для поездки')},
    {'title': 'Молл', 'icon': Icons.shopping_bag, 'page': TopPage(title: 'Молл')},
    {'title': 'Гаражи', 'icon': Icons.garage, 'page': TopPage(title: 'Гаражи')},
    {'title': 'Работа', 'icon': Icons.work, 'page': TopPage(title: 'Работа')},
    {'title': 'Услуги', 'icon': Icons.handyman, 'page': TopPage(title: 'Услуги')},
    {'title': 'Электроника', 'icon': Icons.smartphone, 'page': TopPage(title: 'Электроника')},
    {'title': 'Электроника', 'icon': Icons.smartphone, 'page': TopPage(title: 'Электроника')},
    {'title': 'Электроника', 'icon': Icons.smartphone, 'page': TopPage(title: 'Электроника')},
    {'title': 'Электроника', 'icon': Icons.smartphone, 'page': TopPage(title: 'Электроника')},
    {'title': 'Электроника', 'icon': Icons.smartphone, 'page': TopPage(title: 'Электроника')},
    {'title': 'Электроника', 'icon': Icons.smartphone, 'page': TopPage(title: 'Электроника')},
    {'title': 'Электроника', 'icon': Icons.smartphone, 'page': TopPage(title: 'Электроника')},
  ];

  final List<Map<String, dynamic>> bottomCategories = [
    {'title': 'Авто', 'image': 'assets/auto.png', 'page': BottomPage(title: 'Авто')},
    {'title': 'Недвижи-\nмость', 'image': 'assets/realestate.png', 'page': BottomPage(title: 'Недвижимость')},
    {'title': 'Услуги', 'image': 'assets/services.png', 'page': BottomPage(title: 'Услуги')},
    {'title': 'Электро-\nника', 'image': 'assets/electro.png', 'page': BottomPage(title: 'Электроника')},
    {'title': 'Для дома\nи дачи', 'image': 'assets/home.png', 'page': BottomPage(title: 'Для дома и дачи')},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: topCategories.map((item){
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (_)=> item['page']),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(item['icon'],size: 18,),
                        SizedBox(width: 5,),
                        Text(item['title'],style: TextStyle(fontSize: 13),),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        ),
      );
  }
}
class BottomPage extends StatelessWidget {
  final String title;

  BottomPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text("Bu sahifa: $title")),
    );
  }
}
  class TopPage extends StatelessWidget {
    final String title;

    TopPage({required this.title});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Center(child: Text("Bu sahifa: $title")),
      );
    }
  }