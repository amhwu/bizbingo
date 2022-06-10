import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GameComponent extends StatefulWidget {
  const GameComponent({Key? key}) : super(key: key);

  @override
  State<GameComponent> createState() => _GameComponentState();
}

class _GameComponentState extends State<GameComponent> {
  //When a player has placed 5 markers in a row,
  // horizontally,
  // vertically
  // diagonally, the player calls out "Bingo!"

  @override
  Widget build(BuildContext context) {
    // 25 by 25

    return Scaffold(
      // TODO generate 5 by 5 grid
      body: Center(
        child: SizedBox(
          width: 600,
          height: 600,
          child: GridView.count(
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            crossAxisCount: 5,
            children: List.generate(25, (index) {
              return Expanded(
                child: Container(
                  color: Colors.red,
                  child: Text(
                    'Item $index',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
