import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isLoading= false;
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
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 50,
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
                        SizedBox(
                          width: 20,
                        ),
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
              width:(5 + 5) * 50.0,
              height: 150,
              child: GridView.builder(
                itemCount: bottomCategories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 5,childAspectRatio: 1.2,),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  var item=bottomCategories[index];
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (_)=> item['page']));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Text(item['title'],textAlign:TextAlign.center,style: TextStyle(fontSize: 10),),
                          SizedBox(height: 8,),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(item['image'],fit: BoxFit.contain,height: 30,),
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
              height: 500,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 200,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 200,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 200,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 200,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
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
