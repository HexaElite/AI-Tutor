import 'package:flutter/material.dart';

class CategoryComponent extends StatefulWidget {
  final List<String> categories;
  final int defaultSelectedIndex;

  const CategoryComponent({
    Key? key,
    this.categories = const ['Popular', 'Recommended', 'New', 'Adventure'],
    this.defaultSelectedIndex = 0,
  }) : super(key: key);

  @override
  _CategoryComponentState createState() => _CategoryComponentState();
}

class _CategoryComponentState extends State<CategoryComponent> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.defaultSelectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          widget.categories.length,
          (index) => Padding(
            padding: EdgeInsets.only(right: index < widget.categories.length - 1 ? 28 : 0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33),
                  color: _selectedIndex == index 
                      ? Colors.white
                      : Colors.transparent,
                  boxShadow: _selectedIndex == index
                      ? [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          )
                        ]
                      : null,
                ),
                child: Text(
                  widget.categories[index],
                  style: TextStyle(
                    fontFamily: 'Actor',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: _selectedIndex == index
                        ? const Color(0xFF232323)
                        : const Color(0xFFB8B8B8),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

