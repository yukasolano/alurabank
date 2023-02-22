import 'package:alurabank/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Text(
            "Account actions",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            _Action(title: "Depositar", icon: Icons.account_balance_wallet),
            _Action(title: "Transferir", icon: Icons.cached),
            _Action(title: "Ler", icon: Icons.center_focus_strong),
          ],
        )
      ]),
    );
  }
}

class _Action extends StatelessWidget {
  final String title;
  final IconData icon;

  const _Action({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: BoxCard(
        boxContent: SizedBox(
          width: 82,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 11),
                child: Icon(icon),
              ),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
