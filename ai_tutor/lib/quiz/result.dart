import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const HexaEliteApp());
}

class HexaEliteApp extends StatelessWidget {
  const HexaEliteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HexaElite AI Tutor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: const CongratulationsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(),
            Expanded(
              child: _buildCongratulationsCard(),
            ),
            _buildBottomNavigation(),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'AI Tutor',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Text(
                    'HexaElite',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      Icon(Icons.circle, color: Colors.blue, size: 8),
                      const SizedBox(width: 4),
                      const Text(
                        'Ashad, Samsudeen',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_down, size: 16),
                    ],
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildCongratulationsCard() {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            // Stars with percentage
            _buildStarsWithPercentage(),
            
            const SizedBox(height: 24),
            
            // Message
            Text(
              'Congratulation you got 87% mark from the quiz...',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
                fontWeight: FontWeight.w500,
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                7,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 32),
            
            // Certificate generation text
            Text(
              'Click here to Generate Your Certificate',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
                fontWeight: FontWeight.w500,
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Generate certificate button
            Container(
              width: 220,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Generate Certificate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStarsWithPercentage() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background circle
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withAlpha((0.2 * 255).toInt()),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
          ),
          
          // Stars and percentage
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Custom star design with SVG-like approach
              SizedBox(
                width: 200,
                height: 200,
                child: CustomPaint(
                  painter: StarsPainter(),
                ),
              ),
              
              // Percentage
              const Text(
                "87%",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8B4513), // Brown color similar to the image
                ),
              ),
              
              // Congratulation text
              const Text(
                "Congratulation",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF8B4513), // Brown color similar to the image
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigation() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey[300]!,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildBottomNavItem(Icons.remove, isSelected: false),
          _buildBottomNavItem(Icons.crop_7_5, isSelected: false),
          _buildBottomNavItem(Icons.favorite_border, isSelected: false),
          _buildBottomNavItem(Icons.person_outline, isSelected: false),
        ],
      ),
    );
  }

  Widget _buildBottomNavItem(IconData icon, {required bool isSelected}) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.grey[300] : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(
        icon,
        color: isSelected ? Colors.black : Colors.grey,
      ),
    );
  }
}

// Custom painter for drawing the stars in a circular pattern
class StarsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Calculate center point
    final center = Offset(size.width / 2, size.height / 2);
    
    // Determine radiuses
    final outerRadius = size.width * 0.4;
    final innerRadius = size.width * 0.2;
    
    // Paint for the stars and lines
    final Paint paint = Paint()
      ..color = const Color(0xFFDAA520) // Golden color
      ..style = PaintingStyle.fill;
    
    // Draw the stars and lines
    for (int i = 0; i < 8; i++) {
      final double angle = i * 2 * math.pi / 8;
      
      // Calculate star position
      final double starX = center.dx + outerRadius * math.cos(angle);
      final double starY = center.dy + outerRadius * math.sin(angle);
      
      // Draw line from center to star
      canvas.drawLine(
        Offset(center.dx + innerRadius * math.cos(angle), center.dy + innerRadius * math.sin(angle)),
        Offset(starX, starY),
        Paint()
          ..color = const Color(0xFFDAA520)
          ..strokeWidth = 2,
      );
      
      // Draw star
      _drawStar(canvas, Offset(starX, starY), size.width * 0.05, paint);
    }
  }

  void _drawStar(Canvas canvas, Offset center, double size, Paint paint) {
    final path = Path();
    
    for (int i = 0; i < 5; i++) {
      final double outerAngle = i * 2 * 3.14159 / 5 - 3.14159 / 2;
      final double innerAngle = (i + 0.5) * 2 * 3.14159 / 5 - 3.14159 / 2;
      
      if (i == 0) {
        path.moveTo(
          center.dx + size * math.cos(outerAngle),
          center.dy + size * math.sin(outerAngle),
        );
      } else {
        path.lineTo(
          center.dx + size * math.cos(outerAngle),
          center.dy + size * math.sin(outerAngle),
        );
      }
      
      path.lineTo(
        center.dx + size * 0.4 * math.cos(innerAngle),
        center.dy + size * 0.4 * math.sin(innerAngle),
      );
    }
    
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}