import 'package:flutter/material.dart';

class GenerateButtonComponent extends StatelessWidget {
  final VoidCallback? onPressed;

  const GenerateButtonComponent({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ?? () {},
      child: Container(
        width: 124,
        height: 56,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF949FA6),
              Color(0xFF929292),
            ],
            transform: GradientRotation(270.77 * 3.14159 / 180),
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Generate',
              style: TextStyle(
                fontFamily: 'Adamina',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10),
            Image.network(
              'https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/iconly-c-2.png',
              width: 24,
              height: 24,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
