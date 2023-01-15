import 'package:flutter/material.dart';
import 'package:streaming_app/constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _selectedCategory = 0;

  GestureDetector buildCategory({
    required int index,
    required String category,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCategory = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          right: defaultPadding / 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: index == _selectedCategory ? primaryColor : secondaryColor,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding / 1.4,
        ),
        child: Text(
          category,
          style: TextStyle(
            color: index == _selectedCategory ? backgroundColor : Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: defaultPadding,
      ),
      height: 30,
      child: ListView.builder(
        padding: const EdgeInsets.only(
          left: defaultPadding,
          right: defaultPadding / 2,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(
          index: index,
          category: categories[index],
        ),
      ),
    );
  }
}
