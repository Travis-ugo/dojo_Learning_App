import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fugoku/features/home/home.dart';
import 'package:fugoku/features/home/home.dart';
import 'package:fugoku/features/premium/premium.dart';
import 'package:fugoku/features/search/search.dart';
import 'package:fugoku/features/your_library/your_library.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark, 
        scaffoldBackgroundColor: const Color(0xFF121111),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pageIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: Container(
        height: 100,
        color: const Color(0xFF121111),
        child: BottomNavigationBar(
          iconSize: 30,
          backgroundColor:  const Color(0xFF121111),
          unselectedItemColor: Colors.grey[600],
          selectedItemColor: Colors.white,
          currentIndex: _pageIndex,
          showUnselectedLabels: true,
          onTap: (index) {
            setState(() {
              _pageIndex = index;
              _pageController.jumpToPage(index);
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book),
              label: 'Your Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bag_fill),
              label: 'Premium',
            ),
          ],
        ),
      ),
      // appBar: PreferredSize(
      //   child: AppBar(
      //     actions: [
      //       IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.home)),
      //     ],
      //     title: Text(widget.title),
      //   ),
      //   preferredSize: Size(
      //     double.maxFinite,
      //     200.0,
      //   ),
      // ),
      body: PageView(
        controller: _pageController,
        children: const [
          Home(),
          Search(),
          YourLirary(),
          Premium(),
        ],
      ),
    );
  }
}


class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
    );
  }
}
