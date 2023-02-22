import 'package:alurabank/components/sections/account_actions.dart';
import 'package:flutter/material.dart';

import '../components/sections/recent_activities.dart';
import '../components/sections/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color.fromRGBO(55, 55, 55, 1)),
        child: Material(
          child: Column(
            children: const [Header(), RecentActivities(), AccountActions()],
          ),
        ),
      ),
    );
  }
}
