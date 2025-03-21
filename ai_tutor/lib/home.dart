import 'package:flutter/material.dart';
import 'HeaderComponent.dart';
import 'SearchComponent.dart';
import 'CategoryComponent.dart';
import 'PopularSectionComponent.dart';
import 'RecommendedSectionComponent.dart';
import 'NavigationComponent.dart';
import 'GenerateButtonComponent.dart';
import 'styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 44),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: HeaderComponent(),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Row(
                children: [
                  Expanded(flex: 3, child: SearchComponent()),
                  SizedBox(width: 15),
                  GenerateButtonComponent(),
                ],
              ),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: CategoryComponent(),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: PopularSectionComponent(
                items: [
                  {
                    'imageUrl': 'https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/group-34.png',
                    'title': 'Alley Palace',
                    'rating': '4.1',
                  },
                  {
                    'imageUrl': 'https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/rectangl-2.png',
                    'title': 'Coeurdes Alpes',
                    'rating': '4.5',
                  },
                ],
              ),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: RecommendedSectionComponent(
                recommendations: [
                  {
                    'image': 'https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/rectangl.png',
                    'title': 'Explore Aspen',
                    'duration': '4N/5D',
                    'icon': 'https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/swm-icon.png',
                  },
                  {
                    'image': 'https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/rectangl-2.png',
                    'title': 'Luxurious Aspen',
                    'duration': '2N/3D',
                    'icon': 'https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/swm-icon-2.png',
                  },
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationComponent(),
    );
  }
}

