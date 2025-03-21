import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String location;

  const HeaderComponent({
    Key? key,
    this.title = 'HexaElite',
    this.subtitle = 'AI Tutor',
    this.location = 'Ashad, Samsudeen',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Greet section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                subtitle,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          // Location section
          Row(
            children: [
              Image.network(
                'https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/swm-icon-3.png',
                width: 16,
                height: 16,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 6),
              Text(
                location,
                style: TextStyle(
                  fontFamily: 'Actor',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF606060),
                ),
              ),
              SizedBox(width: 6),
              Image.network(
                'https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/iconly-l-2.png',
                width: 16,
                height: 16,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

