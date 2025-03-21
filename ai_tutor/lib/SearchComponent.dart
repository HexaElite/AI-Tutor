import 'package:flutter/material.dart';

class SearchComponent extends StatelessWidget {
  final String placeholder;
  final String iconUrl;

  const SearchComponent({
    Key? key,
    this.placeholder = 'Find Topic',
    this.iconUrl = 'https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/iconly-l.png',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 224),
      height: 52,
      decoration: BoxDecoration(
        color: const Color(0xFFF3F8FE),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: const Color(0x33A8CCF0),
          width: 1,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Image.network(
            iconUrl,
            width: 20,
            height: 20,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              placeholder,
              style: const TextStyle(
                fontFamily: 'Adamina',
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFFB8B8B8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

