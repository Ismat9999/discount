import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../widgets/items/item_of_post.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ScrollController scrollController= ScrollController();
  bool isLoading = false;
  final List<Map<String, dynamic>> topCategories = [
    {
      'title': 'Жильё для поездки',
      'icon': Icons.backpack,
      'page': TopPage(title: 'Жильё для поездки')
    },
    {
      'title': 'Молл',
      'icon': Icons.shopping_bag,
      'page': TopPage(title: 'Молл')
    },
    {'title': 'Гаражи', 'icon': Icons.garage, 'page': TopPage(title: 'Гаражи')},
    {'title': 'Работа', 'icon': Icons.work, 'page': TopPage(title: 'Работа')},
    {
      'title': 'Услуги',
      'icon': Icons.handyman,
      'page': TopPage(title: 'Услуги')
    },
    {
      'title': 'Электроника',
      'icon': Icons.smartphone,
      'page': TopPage(title: 'Электроника')
    },
    {
      'title': 'Электроника',
      'icon': Icons.smartphone,
      'page': TopPage(title: 'Электроника')
    },
    {
      'title': 'Электроника',
      'icon': Icons.smartphone,
      'page': TopPage(title: 'Электроника')
    },
    {
      'title': 'Электроника',
      'icon': Icons.smartphone,
      'page': TopPage(title: 'Электроника')
    },
    {
      'title': 'Электроника',
      'icon': Icons.smartphone,
      'page': TopPage(title: 'Электроника')
    },
    {
      'title': 'Электроника',
      'icon': Icons.smartphone,
      'page': TopPage(title: 'Электроника')
    },
    {
      'title': 'Электроника',
      'icon': Icons.smartphone,
      'page': TopPage(title: 'Электроника')
    },
  ];

  final List<Map<String, dynamic>> bottomCategories = [
    {
      'title': 'Авто',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Авто')
    },
    {
      'title': 'Недвижи-\nмость',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Недвижимость')
    },
    {
      'title': 'Услуги',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Услуги')
    },
    {
      'title': 'Электро-\nника',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Электроника')
    },
    {
      'title': 'Для дома\nи дачи',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Для дома и дачи')
    },
    {
      'title': 'Авто',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Авто')
    },
    {
      'title': 'Недвижи-\nмость',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Недвижимость')
    },
    {
      'title': 'Услуги',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Услуги')
    },
    {
      'title': 'Электро-\nника',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Электроника')
    },
    {
      'title': 'Для дома\nи дачи',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Для дома и дачи')
    },
    {
      'title': 'Авто',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Авто')
    },
    {
      'title': 'Недвижи-\nмость',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Недвижимость')
    },
    {
      'title': 'Услуги',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Услуги')
    },
    {
      'title': 'Электро-\nника',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Электроника')
    },
    {
      'title': 'Для дома\nи дачи',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Для дома и дачи')
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 10, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: topCategories.map((item) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => item['page']),
                        );
                      },
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(
                            item['icon'],
                            size: 18,
                          ),
                          Text(
                            item['title'],
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              Container(
                width: (5 + 5) * 50.0,
                height: 150,
                child: GridView.builder(
                  itemCount: bottomCategories.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 1.2,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var item = bottomCategories[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => item['page']));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade300,
                        ),
                        child: Column(
                          children: [
                            Text(
                              item['title'],
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  item['image'],
                                  fit: BoxFit.contain,
                                  height: 30,
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: MediaQuery.of(context).size.height,
                child: MasonryGridView.builder(
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  itemBuilder: (context,index){
                    return itemOfPost(context);
                  },
                ),
              ),
            ],
          ),
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
