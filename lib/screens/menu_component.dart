import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MenuComponent extends StatelessWidget {
  const MenuComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Row(children: [
          Expanded(
            flex: 20, // 20%
            child: Container(color: Colors.red),
          ),
          Expanded(
            flex: 60, // 20%
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "BizBingo👩‍💻",
                  style: TextStyle(fontSize: 100),
                ),
                description(context),
                menuCard(
                  context,
                  "CEO",
                ),
                menuCard(
                  context,
                  "Project management",
                ),
                menuCard(
                  context,
                  "Dinosaur architect",
                ),
                menuCard(
                  context,
                  "Demos that arent demos mode",
                ),
              ],
            ),
          ),
          Expanded(
            flex: 20, // 20%
            child: Container(color: Colors.red),
          ),
        ]),
      ),
    );
  }

  Widget description(BuildContext context) => SizedBox(
        height: 100,
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 30.0,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('Another day another 💸'),
              TypewriterAnimatedText(
                  'This is the 5th meeting about the kickoff meeting'),
              TypewriterAnimatedText(
                  'Everything in this meeting is a sales pitch'),
              TypewriterAnimatedText('No-body knows whats going on'),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
      );

  Widget menuCard(BuildContext context, String message) => Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: SizedBox(
          height: 60,
          child: Row(
            children: [
              SizedBox(
                width: 16,
              ),
              Text(message),
              Spacer(),
              Icon(Icons.chevron_right)
            ],
          ),
        ),
      );
}
