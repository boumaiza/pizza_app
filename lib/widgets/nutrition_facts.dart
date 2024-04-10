import 'package:flutter/material.dart';

class MyMacroWidget extends StatelessWidget {
  final String title;
  final int value;
  final IconData icon;
  const MyMacroWidget(
      {required this.value,
      required this.title,
      required this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(6),
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              offset: const Offset(4, 4),
              color: Colors.grey.shade300,
            )
          ],
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.redAccent,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            Text(
              '$value',
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
