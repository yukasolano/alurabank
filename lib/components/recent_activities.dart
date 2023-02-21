import 'package:alurabank/components/box_card.dart';
import 'package:flutter/material.dart';

class RecentActivities extends StatelessWidget {
  const RecentActivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BoxCard(
        boxContent: Column(
          children: [
            InOut(),
            Limit(),
            Divider(
              color: Colors.white,
            ),
            Tips()
          ],
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
        children: const [
          InOutItem(
            title: "Output",
            value: "\$9900.97",
            color: Color.fromRGBO(255, 175, 29, 1),
          ),
          InOutItem(
            title: "Input",
            value: "\$9332.35",
            color: Color.fromRGBO(191, 69, 198, 1),
          ),
        ],
      ),
    );
  }
}

class InOutItem extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const InOutItem(
      {Key? key, required this.title, required this.value, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        Text(
          value,
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white),
        )
      ],
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
        const Text(
          "Expenses limit: \$432.93",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
        ),
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
          "You've spent \$1500.00 with games this month. Try to reduce this expense.",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(24, 16, 16, 24),
          child: Text("Tell me how",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(178, 12, 187, 1),
              )),
        )
      ],
    );
  }
}
