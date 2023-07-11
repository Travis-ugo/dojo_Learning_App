// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fugoku/core/mock_data.dart';
import 'package:fugoku/core/widgets/text.dart';
import 'package:fugoku/features/details/widgets/info_tile.dart';
import 'package:fugoku/features/details/widgets/info_tile_without.dart';
import 'package:fugoku/features/home/widgets/cirular_with_label.dart';
import 'package:fugoku/features/home/widgets/square_with_label.dart';
import 'package:fugoku/features/media/media.dart';

class Details extends StatelessWidget {
  const Details({
    Key? key,
    required this.mockData,
  }) : super(key: key);

  final DataModel mockData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350.0,
            pinned: true,
            floating: false,
            snap: false,
            flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              final bool isExpanded =
                  constraints.maxHeight > kToolbarHeight + 10;

              return FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/${mockData.imagePath}',
                  fit: BoxFit.cover,
                ),
                titlePadding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
                centerTitle: false,
                title: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: AppText(
                      text: mockData.artistName ?? "",
                      fontSize: isExpanded ? 28 : 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              );
            }),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: AppText(
                text: '${mockData.monthlyListeners} monthly Listeners',
                fontSize: 16,
                fontWeight: FontWeight.w300,
                fontColor: Colors.grey.shade400,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: TopRow(),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: AppText(
                text: 'Popular',
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return InfoTile(
                  action: '',
                  title: mockData.songTitle ?? "",
                  image: mockData.imagePath ?? "",
                  index: index + 1,
                  subTitle: mockData.subTitle ?? "",
                );
              },
              childCount: 4,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return InfoTileWithoutIcon(
                  title: mockData.songTitle ?? "",
                  subTitle: '',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => MediaView(
                              mockData: mockData,
                            )),
                      ),
                    );
                  },
                );
              },
              childCount: 3,
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AppText(
                text: 'You might also like',
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SquareWithLabel(
                    size: 120,
                    mockData: mockData,
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
                mockData: mockData,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CircularWithLabel(
                size: 55,
                mockData: mockData,
                direction: Axis.horizontal,
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopRow extends StatelessWidget {
  const TopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
    );
  }
}
