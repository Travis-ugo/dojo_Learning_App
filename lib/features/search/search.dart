import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fugoku/core/widgets/text.dart';

import 'widgets/genre_card.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 120,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  AppText(
                    text: 'Search',
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                  Icon(
                    CupertinoIcons.camera,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Artists, songs, or podcasts',
                  hintStyle: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w700,
                      fontSize: 16,),
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                     size: 30,
                    color: Colors.grey[700],
                  ),
                  border: InputBorder.none,
                ),
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: AppText(
                text: 'Browse all',
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 6.4 / 3.6,
              crossAxisCount: 2,
                   crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return GenreCard();
            },
          ),
        ],
      ),
    );
  }
}
