import 'package:flutter/material.dart';

class PopularSectionComponent extends StatelessWidget {
  final List<Map<String, String>> items;

  const PopularSectionComponent({
    Key? key,
    this.items = const [
      {
        'imageUrl': 'https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/group-34.png',
        'title': 'Alley Palace',
        'rating': '4.1',
      },
      {
        'imageUrl': 'https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/rectangl-2.png',
        'title': 'Mountain View',
        'rating': '4.3',
      },
    ],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color(0xFF232323),
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  fontFamily: 'CircularXX',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  foreground: Paint()
                    ..shader = LinearGradient(
                      colors: [
                        Color(0xFF176FF2),
                        Color(0xFF196EEE),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ).createShader(Rect.fromLTWH(0.0, 0.0, 100.0, 20.0)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 34),
        Container(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: _buildPopularItem(
                  imageUrl: items[index]['imageUrl']!,
                  title: items[index]['title']!,
                  rating: items[index]['rating']!,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPopularItem({
    required String imageUrl,
    required String title,
    required String rating,
  }) {
    return Container(
      width: 188,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              width: 188,
              height: 240,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 12,
            bottom: 12,
            child: Image.network(
              'https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/iconly-b.png',
              width: 25,
              height: 25,
            ),
          ),
          Positioned(
            left: 12,
            bottom: 54,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: Color(0xFF4D5652),
                    borderRadius: BorderRadius.circular(59),
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Adamina',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Color(0xFF4D5652),
                    borderRadius: BorderRadius.circular(59),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.network(
                        'https://dashboard.codeparrot.ai/api/image/Z9v37ippvFKitUiY/star.png',
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        rating,
                        style: TextStyle(
                          fontFamily: 'Adamina',
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

