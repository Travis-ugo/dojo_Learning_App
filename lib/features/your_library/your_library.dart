import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fugoku/core/mock_data.dart';
import 'package:fugoku/core/widgets/text.dart';
import 'package:fugoku/features/home/widgets/cirular_with_label.dart';
import 'package:fugoku/features/home/widgets/square_with_label.dart';
import 'package:fugoku/features/home/widgets/widget_wrap.dart';
import 'package:fugoku/features/media/record.dart';

class YourLirary extends StatelessWidget {
  const YourLirary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 80,
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 207, 160, 222),
                      child: AppText(
                        text: 'T',
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        fontColor: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 15),
                    const AppText(
                      text: 'Your Library',
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                    ),
                    const Spacer(),
                    const Icon(
                      CupertinoIcons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                    const SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const RecordView()),
                          ),
                        );
                      },
                      child: const Icon(
                        CupertinoIcons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 50,
                padding: const EdgeInsets.only(left: 20),
                margin: const EdgeInsets.only(bottom: 30),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    WidgetWrap(label: 'Playlists'),
                    WidgetWrap(label: 'Podcasts & shows'),
                    WidgetWrap(label: 'Books'),
                    WidgetWrap(label: 'My records'),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: const [
                    Icon(
                      CupertinoIcons.arrow_up_arrow_down,
                      color: Color.fromARGB(255, 195, 193, 193),
                      size: 15,
                    ),
                    SizedBox(width: 15),
                    AppText(
                      text: 'Recents',
                      fontWeight: FontWeight.w400,
                      fontColor: Color.fromARGB(255, 195, 193, 193),
                    ),
                    Spacer(),
                    Icon(
                      CupertinoIcons.grid,
                      color: Color.fromARGB(255, 195, 193, 193),
                      size: 22,
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SquareWithLabel(
                  mockData: mockDataBase[0],
                  size: 70,
                  withSubTitle: true,
                  direction: Axis.horizontal,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SquareWithLabel(
                  mockData: mockDataBase[0],
                  size: 70,
                  withSubTitle: true,
                  direction: Axis.horizontal,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CircularWithLabel(
                      mockData: mockDataBase[0],
                      size: 70,
                      direction: Axis.horizontal,
                      onTap: () {},
                    ),
                  );
                },
                childCount: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
