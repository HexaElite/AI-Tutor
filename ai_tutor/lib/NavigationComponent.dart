import 'package:flutter/material.dart';

class NavigationComponent extends StatelessWidget {
  const NavigationComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFFEFEFE),
            Color(0xFFF5F5F5),
          ],
          stops: [0.0035, 1.7533],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(
            'https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/iconly-c.png',
            isSelected: true,
            size: 24,
          ),
          _buildNavItem('https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/iconly-l-3.png'),
          _buildNavItem('https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/iconly-l-4.png'),
          _buildNavItem('https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/iconly-l-5.png'),
        ],
      ),
    );
  }

  Widget _buildNavItem(String iconPath, {bool isSelected = false, double size = 20}) {
    return GestureDetector(
      onTap: () {
        // Handle navigation item tap
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isSelected ? Colors.white : Colors.transparent,
        ),
        child: Image.network(
          iconPath,
          width: size,
          height: size,
          color: isSelected ? const Color(0xFF2A6BBD) : Colors.grey,
        ),
      ),
    );
  }
}

