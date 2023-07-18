// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fugoku/core/mock_data.dart';
import 'package:fugoku/core/widgets/text.dart';
import 'package:fugoku/features/details/details.dart';
import 'package:fugoku/features/home/widgets/cirular_with_label.dart';
import 'package:fugoku/features/home/widgets/rectangle_slid.dart';
import 'package:fugoku/features/home/widgets/square_with_label.dart';
import 'package:fugoku/features/home/widgets/widget_wrap.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 50,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 80,
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: const [
                    AppText(
                      text: 'Good evening',
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                    ),
                    Spacer(),
                    Icon(
                      CupertinoIcons.bell,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      CupertinoIcons.clock,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  children: const [
                    WidgetWrap(label: 'Music'),
                    WidgetWrap(label: 'Podcasts & shows'),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(18),
              sliver: SliverGrid.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 9.5 / 3.23,
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return RectangleSlide(
                    mockData: mockDataBase[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => Details(
                                mockData: mockDataBase[index],
                              )),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: AppText(
                  text: 'Popular artists',
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 250,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  scrollDirection: Axis.horizontal,
                  itemCount: mockDataBase.length,
                  itemBuilder: (context, index) {
                    return CircularWithLabel(
                      size: 180,
                      mockData: mockDataBase[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Details(
                                  mockData: mockDataBase[index],
                                )),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: AppText(
                  text: 'Made for Travis Okonicha',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 280,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  scrollDirection: Axis.horizontal,
                  itemCount: mockDataBase.length,
                  itemBuilder: (context, index) {
                    return SquareWithLabel(
                      size: 200,
                      mockData: mockDataBase[index],
                    );
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SquareWithLabel(
                  size: 55,
                  direction: Axis.horizontal,
                  mockData: mockDataBase[0],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CircularWithLabel(
                  size: 55,
                  mockData: mockDataBase[5],
                  direction: Axis.horizontal,
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
