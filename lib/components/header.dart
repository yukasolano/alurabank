import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(103, 99, 234, 1),
              Color.fromRGBO(155, 105, 254, 1),
              Color.fromRGBO(195, 107, 255, 1),
            ],
          ),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 80, 20, 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    text: '\$ ',
                    style: TextStyle(fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: '1000.00',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Available balance",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            const Icon(
              Icons.account_circle,
              size: 35,
            )
          ],
        ),
      ),
    );
  }
}
