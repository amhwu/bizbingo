import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CellComponent extends StatefulWidget {
  const CellComponent({Key? key}) : super(key: key);

  @override
  State<CellComponent> createState() => _CellComponentState();
}

class _CellComponentState extends State<CellComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: 200,
      height: 200,
    );
  }
}
