import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:skidka/pages/add_page.dart';
import 'package:skidka/pages/book_page.dart';
import 'package:skidka/pages/category_page.dart';
import 'package:skidka/pages/main_page.dart';
import 'package:skidka/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const MainPage(),
    const CategoryPage(),
    const AddPage(),
    const BookPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Категории',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Реклама',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Бронь',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue.shade800,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
      ),
    );
  }
}

// ---- ОБНОВЛЕННЫЙ КЛАСС _HomeContent ----
// class _HomeContent extends StatelessWidget {
//   final List<Color> bannerColors = [
//     Colors.red.shade200,
//     Colors.green.shade200,
//     Colors.blue.shade200,
//     Colors.orange.shade200,
//   ];
//
//   final List<Map<String, String>> offers = [
//     {
//       'title': 'Скидка 20% на пиццу!',
//       'store': 'Пиццерия "Вкусная"',
//       'distance': '1.5 км'
//     },
//     {
//       'title': 'Маникюр + педикюр за 150,000 сум',
//       'store': 'Салон красоты "Леди"',
//       'distance': '0.8 км'
//     },
//     {
//       'title': 'Купи 2, получи 3-ю книгу бесплатно',
//       'store': 'Книжный магазин "Читатель"',
//       'distance': '2.1 км'
//     },
//     {
//       'title': 'Акция на летние шины -10%',
//       'store': 'Шиномонтаж "Быстрые колеса"',
//       'distance': '3.0 км'
//     },
//     {
//       'title': 'Бесплатная диагностика ноутбуков',
//       'store': 'Сервисный центр "IT Fix"',
//       'distance': '0.5 км'
//     },
//     {
//       'title': 'Свежие фрукты со скидкой',
//       'store': 'Рынок "Базарком"',
//       'distance': '0.3 км'
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Раздел баннеров (карусель)
//           Padding(
//             padding: const EdgeInsets.only(top: 15.0),
//             // Отступ сверху, например, 20 пикселей.
//             child: CarouselSlider(
//               options: CarouselOptions(
//                 height: 180.0,
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//                 aspectRatio: 1 / 9,
//                 viewportFraction: 0.8,
//               ),
//               items: bannerColors.map((color) {
//                 // <--- ЭТОТ БЛОК items ОСТАЕТСЯ
//                 return Builder(
//                   builder: (BuildContext context) {
//                     return Container(
//                       width: MediaQuery.of(context).size.width,
//                       margin: const EdgeInsets.symmetric(horizontal: 5.0),
//                       decoration: BoxDecoration(
//                         color: color,
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'Баннер ${bannerColors.indexOf(color) + 1}',
//                           style: const TextStyle(
//                               fontSize: 18.0, color: Colors.white),
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               }).toList(),
//             ),
//           ),
//           const SizedBox(height: 16), // Отступ под каруселью
//
//           // Раздел фильтров
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Предложения для вас',
//                   style: Theme.of(context).textTheme.titleLarge,
//                 ),
//                 TextButton.icon(
//                   onPressed: () {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       const SnackBar(
//                           content: Text('Открытие фильтров (в разработке)')),
//                     );
//                   },
//                   icon: const Icon(Icons.filter_list),
//                   label: const Text('Фильтр'),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 8),
//
//           // Список предложений
//           ListView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             itemCount: offers.length,
//             itemBuilder: (context, index) {
//               final offer = offers[index];
//               return Card(
//                 margin:
//                     const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
//                 elevation: 2,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         offer['title']!,
//                         style: Theme.of(context)
//                             .textTheme
//                             .titleMedium!
//                             .copyWith(fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(height: 4),
//                       Text(
//                         'Магазин: ${offer['store']!}',
//                         style: Theme.of(context)
//                             .textTheme
//                             .bodyMedium!
//                             .copyWith(color: Colors.grey[700]),
//                       ),
//                       const SizedBox(height: 4),
//                       Align(
//                         alignment: Alignment.bottomRight,
//                         child: Text(
//                           offer['distance']!,
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodySmall!
//                               .copyWith(fontStyle: FontStyle.italic),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//           const SizedBox(height: 16), // Отступ снизу
//         ],
//       ),
//     );
//   }
// }
