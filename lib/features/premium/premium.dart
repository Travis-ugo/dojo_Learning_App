// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fugoku/core/widgets/app_button.dart';
import 'package:fugoku/core/widgets/text.dart';

class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350.0,
            // pinned: true,
            floating: false,
            snap: false,
            centerTitle: false,
            title: Row(
              children: const [
                Icon(
                  CupertinoIcons.check_mark_circled,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                AppText(
                  text: "Premium",
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ],
            ),
            flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              final bool isExpanded =
                  constraints.maxHeight > kToolbarHeight + 10;

              return FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/jcole.jpeg',
                  fit: BoxFit.cover,
                ),
                titlePadding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
                centerTitle: false,
                // title: Align(
                //   alignment: Alignment.bottomLeft,
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 35),
                //     child: AppText(
                //       text: "Mother",
                //       fontSize: isExpanded ? 28 : 14,
                //       fontWeight: FontWeight.w700,
                //     ),
                //   ),
                // ),
              );
            }),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  AppText(
                    text: 'FREE TRIAL',
                    fontSize: 12,
                    overflow: TextOverflow.visible,
                    fontWeight: FontWeight.w500,
                    fontColor: Colors.grey.shade200,
                  ),
                  const SizedBox(height: 10),
                  AppText(
                    text: 'Try Premium free for 1 month',
                    fontSize: 28,
                    overflow: TextOverflow.visible,
                    fontWeight: FontWeight.w800,
                    fontColor: Colors.grey.shade200,
                  ),
                  AppButton(
                    onTap: () {},
                    buttonText: "GET PREMIUM",
                    buttonMaterialColor: Colors.grey.shade200,
                  ),
                  AppText(
                    text:
                        'Try Premium free for 1 month Try Premium free for 1 month Try Premium free for 1 month Try Premium free for 1 month',
                    fontSize: 12,
                    overflow: TextOverflow.visible,
                    fontWeight: FontWeight.w400,
                    fontColor: Colors.grey.shade500,
                  ),
                  const ReasonCard(),
                  const SizedBox(height: 50),
                  const CurrentPlanCard(),
                   const SizedBox(height: 30),
                  const AppText(
                    text: 'Pick your Premium',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(height: 50),
                  const DifferentPlanCard(),
                ],
              ),
            ),
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
        ],
      ),
    );
  }
}

class ReasonCard extends StatelessWidget {
  const ReasonCard({
    Key? key,
    this.cardCheckItem,
  }) : super(key: key);

  final List? cardCheckItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 30, 27, 27),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: AppText(
              text: 'Why join Premium?',
              fontSize: 18,
              fontWeight: FontWeight.w800,
              fontColor: Colors.grey[300],
            ),
          ),
          Divider(
            color: Colors.grey[700],
          ),
          for (var i = 0; i < 4; i++) // cardCheckItem
            ReasonTextTile(
              titleText: 'Holly tile $i',
            ),
        ],
      ),
    );
  }
}

class CurrentPlanCard extends StatelessWidget {
  const CurrentPlanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 37, 35, 35),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            text: 'Fugoku Free',
            fontSize: 18,
            fontWeight: FontWeight.w700,
            fontColor: Colors.grey[200],
          ),
          AppText(
            text: 'CURRENT PLAN',
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontColor: Colors.grey[500],
          ),
        ],
      ),
    );
  }
}

class ReasonTextTile extends StatelessWidget {
  const ReasonTextTile({
    Key? key,
    required this.titleText,
  }) : super(key: key);
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          const Icon(
            Icons.check,
            color: Colors.green,
            size: 25,
          ),
          const SizedBox(width: 15),
          AppText(
            text: titleText,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}

class DifferentPlanCard extends StatelessWidget {
  const DifferentPlanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 37, 35, 35),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: 'Premium Individual',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontColor: Colors.grey[200],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AppText(
                    text: 'Free',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontColor: Colors.grey[300],
                  ),
                  const SizedBox(height: 8),
                  AppText(
                    text: 'FOR 1 MONTH',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontColor: Colors.grey[300],
                  ),
                ],
              ),
            ],
          ),
           const SizedBox(height: 50),
          AppText(
            text: 'FOR 1 MONTH',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontColor: Colors.grey[200],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: AppButton(
              onTap: () {},
              buttonText: "TRY 1 MONTH FREE",
              buttonMinWidth: 200,
            ),
          ),
          AppText(
            text:
                'FOR 1 MONTH FOR 1 MONTHFOR 1 MONTHFOR 1 MONTHFOR 1 MONTHFOR 1 MONTHFOR 1 MONTHFOR 1 MONTHFOR 1 MONTHFOR 1 MONTHFOR 1 MONTHFOR 1 MONTHFOR 1 MONTHFOR 1 MONTHFOR 1 MONTHFOR 1 MONTH',
            fontSize: 10,
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            fontWeight: FontWeight.w300,
            fontColor: Colors.grey[500],
          ),
        ],
      ),
    );
  }
}
