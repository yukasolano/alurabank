import 'package:flutter/material.dart';

class RecentActivities extends StatelessWidget {
  const RecentActivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromRGBO(75, 75, 75, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        height: 233,
        padding: EdgeInsets.all(16),
        child: Column(
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
    return Row(
      children: [Text("Input"), Text("Output")],
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
