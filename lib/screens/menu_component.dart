import 'package:bizbingo/screens/game_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';

class MenuComponent extends StatelessWidget {
  const MenuComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isWebMobile = kIsWeb &&
        (defaultTargetPlatform == TargetPlatform.iOS ||
            defaultTargetPlatform == TargetPlatform.android);

    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: isWebMobile
            ? centralMenu(context)
            : Row(children: [
                Expanded(
                  flex: 20, // 20%
                  child: Container(color: Colors.transparent),
                ),
                Expanded(
                  flex: 60, // 20%
                  child: centralMenu(context),
                ),
                Expanded(
                  flex: 20, // 20%
                  child: Container(color: Colors.transparent),
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
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText('Another day another 💸'),
              TypewriterAnimatedText('Enjoy having meetings about meetings'),
              TypewriterAnimatedText('No-body knows whats going on'),
              TypewriterAnimatedText(
                  'Vision is whatever the bosses thought of this moring'),
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

  Widget centralMenu(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "BizBingo👩‍💻",
          style: TextStyle(fontSize: 100),
        ),
        description(context),
        MenuCardComponent(
          message: "C-level waffling",
          onPressed: () {
            print("firing");
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => GameComponent()));
          },
        ),
        MenuCardComponent(
          message: "MiddleMangement fake it till make it",
          onPressed: () {},
        ),
        MenuCardComponent(
          message: "Dinosaur🦖 relic legacy meetings",
          onPressed: () {},
        ),
        MenuCardComponent(
          message: "Demos that arent demos",
          onPressed: () {},
        ),
        MenuCardComponent(
          message:
              "Overhyped meeting about re-building things already recently built🤓",
          onPressed: () {},
        ),
        MenuCardComponent(
          message: "All hands",
          onPressed: () {},
        ),
      ],
    );
  }
}

class MenuCardComponent extends StatefulWidget {
  String message;
  final VoidCallback onPressed;

  MenuCardComponent({
    Key? key,
    required this.message,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<MenuCardComponent> createState() => _MenuCardComponentState();
}

class _MenuCardComponentState extends State<MenuCardComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: SizedBox(
          height: 60,
          child: Row(
            children: [
              SizedBox(
                width: 16,
              ),
              Text(widget.message),
              Spacer(),
              Icon(Icons.chevron_right)
            ],
          ),
        ),
      ),
    );
  }
}


// StatefulWidget {
//   const FadButton({
//     Key? key,
//     required this.onPressed,
//     required this.child,
//   }) : super(key: key);

//   final VoidCallback onPressed;
//   final Widget child;

//   @override
//   State<FadButton> createState() => _FadButtonState();
// }

// class _FadButtonState extends State<FadButton> {
//   bool _focused = false;
//   bool _hovering = false;
//   bool _on = false;
//   late final Map<Type, Action<Intent>> _actionMap;
//   final Map<ShortcutActivator, Intent> _shortcutMap =
//       const <ShortcutActivator, Intent>{
//     SingleActivator(LogicalKeyboardKey.keyX): ActivateIntent(),
//   };

//   @override
//   void initState() {
//     super.initState();
//     _actionMap = <Type, Action<Intent>>{
//       ActivateIntent: CallbackAction<Intent>(
//         onInvoke: (Intent intent) => _toggleState(),
//       ),
//     };
//   }

//   Color get color {
//     Color baseColor = Colors.lightBlue;
//     if (_focused) {
//       baseColor = Color.alphaBlend(Colors.black.withOpacity(0.25), baseColor);
//     }
//     if (_hovering) {
//       baseColor = Color.alphaBlend(Colors.black.withOpacity(0.1), baseColor);
//     }
//     return baseColor;
//   }

//   void _toggleState() {
//     setState(() {
//       _on = !_on;
//     });
//   }

//   void _handleFocusHighlight(bool value) {
//     setState(() {
//       _focused = value;
//     });
//   }

//   void _handleHoveHighlight(bool value) {
//     setState(() {
//       _hovering = value;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: _toggleState,
//       child: FocusableActionDetector(
//         actions: _actionMap,
//         shortcuts: _shortcutMap,
//         onShowFocusHighlight: _handleFocusHighlight,
//         onShowHoverHighlight: _handleHoveHighlight,
//         child: Row(
//           children: <Widget>[
//             Container(
//               padding: const EdgeInsets.all(10.0),
//               color: color,
//               child: widget.child,
//             ),
//             Container(
//               width: 30,
//               height: 30,
//               margin: const EdgeInsets.all(10.0),
//               color: _on ? Colors.red : Colors.transparent,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }