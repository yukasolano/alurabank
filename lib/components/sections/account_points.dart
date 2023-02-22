import 'package:alurabank/components/box_card.dart';
import 'package:alurabank/components/color_dot.dart';
import 'package:alurabank/components/line_divider.dart';
import 'package:alurabank/components/section_title.dart';
import 'package:alurabank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SectionTitle(title: "Account points"),
          BoxCard(boxContent: _AccountPointsContent())
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text("Total points:"),
        ),
        Text(
          "3000",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const LineDivider(),
        Text(
          "Goals:",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        _ItemGoal(
            goal: "Free delivery: 15000pts",
            color: ThemeColors.points["delivery"]!),
        _ItemGoal(
            goal: "Streaming for 1 month: 30000pts",
            color: ThemeColors.points["streaming"]!)
      ],
    );
  }
}

class _ItemGoal extends StatelessWidget {
  final String goal;
  final Color color;

  const _ItemGoal({Key? key, required this.goal, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [ColorDot(color: color), Text(goal)],
      ),
    );
  }
}
