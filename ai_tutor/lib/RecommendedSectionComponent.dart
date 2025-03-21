import 'package:flutter/material.dart';

class RecommendedSectionComponent extends StatelessWidget {
  final List<Map<String, String>> recommendations;

  const RecommendedSectionComponent({
    Key? key,
    this.recommendations = const [
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
                'Recommended',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF232323),
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2A6BBD),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: recommendations.map((recommendation) {
              return Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: _buildRecommendedCard(
                  image: recommendation['image']!,
                  title: recommendation['title']!,
                  duration: recommendation['duration']!,
                  icon: recommendation['icon']!,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildRecommendedCard({
    required String image,
    required String title,
    required String duration,
    required String icon,
  }) {
    return Container(
      width: 174,
      height: 142,
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white,
            Color(0xFFF5F5F5),
          ],
          transform: GradientRotation(115.12 * 3.14 / 180),
        ),
        border: Border.all(color: Color(0xFFF4F4F4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  image,
                  width: 166,
                  height: 96,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                    color: Color(0xFF3A544F),
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Text(
                    duration,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'CircularXX',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF232323),
            ),
          ),
          SizedBox(height: 3),
          Row(
            children: [
              Image.network(
                icon,
                width: 12,
                height: 12,
              ),
              SizedBox(width: 4),
              Text(
                'Hot Deal',
                style: TextStyle(
                  fontFamily: 'Actor',
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF3A544F),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

