import 'package:alurabank/components/box_card.dart';
import 'package:alurabank/components/color_dot.dart';
import 'package:alurabank/components/line_divider.dart';
import 'package:alurabank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class RecentActivities extends StatelessWidget {
  const RecentActivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BoxCard(
        boxContent: Column(
          children: const [_ExpenseIncome(), _Limit(), LineDivider(), _Tips()],
        ),
      ),
    );
  }
}

class _ExpenseIncome extends StatelessWidget {
  const _ExpenseIncome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _SummaryValue(
          title: "Expense",
          value: "\$9900.97",
          color: ThemeColors.recentActivity["expense"],
        ),
        _SummaryValue(
          title: "Income",
          value: "\$9332.35",
          color: ThemeColors.recentActivity["income"],
        ),
      ],
    );
  }
}

class _SummaryValue extends StatelessWidget {
  final String title;
  final String value;
  final Color? color;

  const _SummaryValue(
      {Key? key, required this.title, required this.value, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ColorDot(color: color!),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            Text(
              value,
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
      ],
    );
  }
}

class _Limit extends StatelessWidget {
  const _Limit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 8),
          child: Text("Expenses limit: \$432.93"),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: const LinearProgressIndicator(value: 0.3, minHeight: 8),
        )
      ],
    );
  }
}

class _Tips extends StatelessWidget {
  const _Tips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
            "You've spent \$1500.00 with games this month. Try to reduce this expense."),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Tell me how",
            style: TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}
