import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GameComponent extends StatefulWidget {
  const GameComponent({Key? key}) : super(key: key);

  @override
  State<GameComponent> createState() => _GameComponentState();
}

class _GameComponentState extends State<GameComponent> {
  @override
  Widget build(BuildContext context) {
    // 25 by 25
    return Scaffold(
      body: Center(),
    );
  }
}
