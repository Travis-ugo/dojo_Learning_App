import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fugoku/core/mock_data.dart';
import 'package:fugoku/core/widgets/text.dart';
import 'package:fugoku/features/details/details.dart';
import 'package:fugoku/features/home/home.dart';
import 'package:fugoku/features/home/home.dart';
import 'package:fugoku/features/home/widgets/on_playing_widget.dart';
import 'package:fugoku/features/media/media.dart';
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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pageIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            OnPlayingWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => MediaView(
                          mockData: mockDataBase[4],
                        )),
                  ),
                );
              }, mockData: mockDataBase[4],
            ),
            Container(
              height: 100,
              color: const Color(0xFF121111),
              child: BottomNavigationBar(
                iconSize: 30,
                backgroundColor: const Color.fromARGB(255, 14, 12, 12),
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
                    backgroundColor: Color.fromARGB(255, 14, 12, 12),
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Color.fromARGB(255, 14, 12, 12),
                    icon: Icon(CupertinoIcons.search),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Color.fromARGB(255, 14, 12, 12),
                    icon: Icon(CupertinoIcons.book),
                    label: 'Your Library',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Color.fromARGB(255, 14, 12, 12),
                    icon: Icon(CupertinoIcons.bag_fill),
                    label: 'Premium',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
