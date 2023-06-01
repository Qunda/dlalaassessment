import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const CustomButton({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(235, 159, 44, 1);

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50.0),
        ),
      ),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(primaryColor),
          minimumSize: MaterialStateProperty.all(
            const Size(120, 50),
          ),
        ),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 28),
            Text(text),
          ],
        ),
      ),
    );
  }
}
