import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;

  const BoxCard({Key? key, required this.boxContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromRGBO(75, 75, 75, 1),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      padding: const EdgeInsets.all(16),
      child: boxContent,
    );
  }
}
