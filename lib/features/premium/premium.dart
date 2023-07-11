
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1.3,
                        color: Colors.blueAccent,
                      )),
                ),
                Positioned(
                  bottom: 5,
                  right: 10,
                  child: Container(
                    height: 17,
                    width: 17,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white,
                      ),
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Travis Okonicha',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.checkmark_alt_circle,
                  size: 15,
                ),
              ],
            ),
            Text(
              '123 SubScribers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
