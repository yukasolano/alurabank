import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;

  const BoxCard({Key? key, required this.boxContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
          boxShadow: kElevationToShadow[3],
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(16),
      child: boxContent,
    );
  }
}
