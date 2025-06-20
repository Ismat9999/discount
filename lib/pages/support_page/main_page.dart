import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../widgets/items/item_of_grid_view.dart';
import '../../widgets/items/item_of_list_member.dart';
import '../../widgets/items/item_of_post.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ScrollController scrollController = ScrollController();
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
      'image': 'assets/images/car.jpg',
      'page': BottomPage(title: 'Авто')
    },
    {
      'title': 'Недвижимость',
      'image': 'assets/images/wear.jpg',
      'page': BottomPage(title: 'Недвижимость')
    },
    {
      'title': 'Услуги',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Услуги')
    },
    {
      'title': 'Электроника',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Электроника')
    },
    {
      'title': 'Для дома и дачи',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Для дома и дачи')
    },
    {
      'title': 'Авто',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Авто')
    },
    {
      'title': 'Недвижимость',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Недвижимость')
    },
    {
      'title': 'Услуги',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Услуги')
    },
    {
      'title': 'Электроника',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Электроника')
    },
    {
      'title': 'Для дома и дачи',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Для дома и дачи')
    },
    {
      'title': 'Авто',
      'image': 'assets/images/car.jpg',
      'page': BottomPage(title: 'Авто')
    },
    {
      'title': 'Недвижимость',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Недвижимость')
    },
    {
      'title': 'Услуги',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Услуги')
    },
    {
      'title': 'Электроника',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Электроника')
    },
    {
      'title': 'Для дома и дачи',
      'image': 'assets/images/logo1.png',
      'page': BottomPage(title: 'Для дома и дачи')
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
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
                          SizedBox(
                            width: 10,
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
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    itemOfGridView(context),
                  ],
                ),
                ),
              Container(
                height:100,
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:1),
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context,index){
                     return itemOfListMember(context);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Рекомендации",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.list,size: 20,),),
                ],
              ),
              Container(
                height: 600,
                child: MasonryGridView.builder(
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  itemCount: 20,
                  itemBuilder: (context, index) {
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
