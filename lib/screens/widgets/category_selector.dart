import 'package:faality/shared/const.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({Key? key}) : super(key: key);

  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {

  int selectedIndex = 0;

  final List<String> categories = ['Trending','Culture','Business','Gaming','Entrepreneurship','Technology','kids'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Color(0xff222B44),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(6, 8, 6, 4),
              child: Text(
                categories[index],
                style: index == selectedIndex ?
                TextStyle(
                  shadows: [
                    Shadow(
                        color: Colors.white,
                        offset: Offset(0, -5))
                  ],
                  color: Colors.transparent,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.3,
                  decoration:
                    TextDecoration.underline,
                    decorationColor: Colors.white,
                    decorationThickness: 2
                ) :
                TextStyle(color: Colors.white60,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.3,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
