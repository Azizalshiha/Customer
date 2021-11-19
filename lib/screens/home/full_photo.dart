import 'package:flutter/material.dart';

class FullPhoto extends StatelessWidget {
  const FullPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/Chess.jpg'),
    );
  }
}
