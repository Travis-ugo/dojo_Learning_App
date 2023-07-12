// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fugoku/core/widgets/app_button.dart';
import 'package:fugoku/core/widgets/text.dart';
import 'package:fugoku/features/premium/widgets/current_plan_card.dart';
import 'package:fugoku/features/premium/widgets/reason_card.dart';
import 'package:fugoku/features/premium/widgets/system_plan_card.dart';

class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350.0,
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
              // final bool isExpanded =
              //     constraints.maxHeight > kToolbarHeight + 10;

              return FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/weel.jpeg',
                  fit: BoxFit.cover,
                ),
                titlePadding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
                centerTitle: false,
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
                  const SizedBox(height: 20),
                  AppButton(
                    onTap: () {},
                    buttonText: "GET PREMIUM",
                    buttonMaterialColor: Colors.grey.shade200,
                  ),
                  const SizedBox(height: 20),
                  AppText(
                    text:
                        'Only #900/month after. Offer only for users who are new to Premium. Terms and conditions apply.',
                    fontSize: 14,
                    overflow: TextOverflow.visible,
                    fontWeight: FontWeight.w400,
                    fontColor: Colors.grey.shade400,
                  ),
                  const SizedBox(height: 20),
                  const ReasonCard(),
                  const SizedBox(height: 50),
                  const CurrentPlanCard(),
                  const SizedBox(height: 30),
                  const AppText(
                    text: 'Pick your Premium',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  SystemPlanCard(
                    bodyText: mockText,
                    secondButton: true,
                    buttonLabel: 'TRY 1 MONTH FREE',
                    cardSubSubtitle: 'FOR 1 MONTH',
                    cardSubtitle: 'Free',
                    cardTitle: 'Premium Individual',
                    cardColor: const Color.fromARGB(255, 37, 35, 35),
                    onTap: () {},
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 16, 117, 20),
                        Colors.green,
                      ],
                      begin: Alignment.topLeft,
                    ),
                  ),
                  SystemPlanCard(
                    bodyText: mockText,
                    buttonLabel: 'TRY 1 MONTH FREE',
                    cardSubSubtitle: 'FOR 1 MONTH',
                    cardSubtitle: 'Free',
                    cardTitle: 'Premium Individual',
                    cardColor: Colors.deepOrangeAccent,
                    onTap: () {},
                  ),
                  SystemPlanCard(
                    bodyText:
                        'Only #900/month after. Offer only for users who are new to Premium. Terms and conditions apply.',
                    buttonLabel: 'GET PREMIUM',
                    cardSubSubtitle: 'FROM/MONTH',
                    cardSubtitle: '#990',
                    cardTitle: 'Premium Prepaid',
                    cardColor: const Color.fromARGB(255, 57, 150, 196),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

var mockText =
    'adipiscing enim eu turpis. Euismod in pellentesque massa placerat duis ultricies lacus. Integer malesuada nunc vel risus commodo viverra maecenas accumsan. Adipiscing commodo elit at imperdiet dui.';
