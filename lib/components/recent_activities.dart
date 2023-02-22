import 'package:alurabank/components/box_card.dart';
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
          children: [InOut(), Limit(), Divider(), Tips()],
        ),
      ),
    );
  }
}

class InOut extends StatelessWidget {
  const InOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InOutItem(
            title: "Expense",
            value: "\$9900.97",
            color: ThemeColors.recentActivity["expense"],
          ),
          InOutItem(
            title: "Income",
            value: "\$9332.35",
            color: ThemeColors.recentActivity["income"],
          ),
        ],
      ),
    );
  }
}

class InOutItem extends StatelessWidget {
  final String title;
  final String value;
  final Color? color;

  const InOutItem(
      {Key? key, required this.title, required this.value, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(title), Text(value, style: Theme.of(context).textTheme.bodyLarge,)],
    );
  }
}

class Limit extends StatelessWidget {
  const Limit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Expenses limit: \$432.93"),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: const LinearProgressIndicator(
              value: 0.3,
              color: Color.fromRGBO(178, 12, 187, 1),
              backgroundColor: Color.fromRGBO(108, 108, 108, 1),
              minHeight: 8,
            ),
          ),
        )
      ],
    );
  }
}

class Tips extends StatelessWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
            "You've spent \$1500.00 with games this month. Try to reduce this expense."),
        Padding(
          padding: EdgeInsets.fromLTRB(8, 16, 16, 8),
          child: Text("Tell me how",
              style: TextStyle(
                color: Color.fromRGBO(178, 12, 187, 1),
              )),
        )
      ],
    );
  }
}
