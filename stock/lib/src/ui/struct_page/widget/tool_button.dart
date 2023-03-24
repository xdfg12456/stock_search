import 'package:flutter/material.dart';

class ToolButton extends StatelessWidget {
  const ToolButton({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Icon(icon,color: Colors.black,),
      title: Text(
        text,
        style: const TextStyle(
          decoration: TextDecoration.none,
          color: Colors.black,
          fontSize: 25,
        ),
      ),
    );
  }
}
