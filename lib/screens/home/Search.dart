import 'package:faality/screens/home/activity_screen.dart';
import 'package:faality/screens/widgets/category_selector.dart';
import 'package:flutter/material.dart';
import 'package:faality/shared/const.dart';

import 'filter_page.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222B44),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  backgroundColor: const Color(0xff222B44),
                  //const Color(0xff222B44),
                  centerTitle: true,
                  elevation: 0.0,
                  title: !isSearching
                      ? Text(
                          'Explore',
                          style: lighttext,
                        )
                      : TextField(
                          decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: 'Search for activities',
                        )
                  ),

                  actions: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSearching = !isSearching;
                        });
                      },
                      child: Icon(
                        Icons.search,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => FilterPage(),
                        ),
                      ),
                      child: Icon(Icons.filter_list),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                  ],
                ),
              ],
          body: SingleChildScrollView(
            child: Column(
              children: [
                CategorySelector(),
                Container(
                  width: double.infinity,
                  decoration: whiteCont,
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Activity(),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 130,
                          width: 320,
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                          decoration: BoxDecoration(
                            color: Color(0xFFFEF9EB),
                            border: Border.all(color: Colors.black54, width: 2),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: Color(0xff222B44),
                                    size: 28,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '07 Nov',
                                    style: TextStyle(
                                        color: Color(0xff222B44),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '4:30 AM',
                                    style: TextStyle(
                                      color: Color(0xff222B44),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              VerticalDivider(
                                color: Colors.black,
                                thickness: 2,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Chess tournament',
                                    style: TextStyle(
                                      color: Color(0xff222B44),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Color(0xff222B44),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        'Riyadh',
                                        style: TextStyle(
                                          color: Color(0xff222B44),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 17,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.group,
                                        color: Color(0xff222B44),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '16',
                                        style: TextStyle(
                                          color: Color(0xff222B44),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 130,
                          width: 320,
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                          decoration: BoxDecoration(
                            color: Color(0xFFFEF9EB),
                            border: Border.all(color: Colors.black54, width: 2),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: Color(0xff222B44),
                                    size: 28,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '07 Nov',
                                    style: TextStyle(
                                        color: Color(0xff222B44),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '4:30 AM',
                                    style: TextStyle(
                                      color: Color(0xff222B44),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              VerticalDivider(
                                color: Colors.black,
                                thickness: 2,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Chess tournament',
                                    style: TextStyle(
                                      color: Color(0xff222B44),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Color(0xff222B44),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        'Riyadh',
                                        style: TextStyle(
                                          color: Color(0xff222B44),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 17,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.group,
                                        color: Color(0xff222B44),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '16',
                                        style: TextStyle(
                                          color: Color(0xff222B44),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 130,
                          width: 320,
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                          decoration: BoxDecoration(
                            color: Color(0xFFFEF9EB),
                            border: Border.all(color: Colors.black54, width: 2),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: Color(0xff222B44),
                                    size: 28,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '07 Nov',
                                    style: TextStyle(
                                        color: Color(0xff222B44),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '4:30 AM',
                                    style: TextStyle(
                                      color: Color(0xff222B44),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              VerticalDivider(
                                color: Colors.black,
                                thickness: 2,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Chess tournament',
                                    style: TextStyle(
                                      color: Color(0xff222B44),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Color(0xff222B44),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        'Riyadh',
                                        style: TextStyle(
                                          color: Color(0xff222B44),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 17,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.group,
                                        color: Color(0xff222B44),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '16',
                                        style: TextStyle(
                                          color: Color(0xff222B44),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 130,
                          width: 320,
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                          decoration: BoxDecoration(
                            color: Color(0xFFFEF9EB),
                            border: Border.all(color: Colors.black54, width: 2),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: Color(0xff222B44),
                                    size: 28,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '07 Nov',
                                    style: TextStyle(
                                        color: Color(0xff222B44),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '4:30 AM',
                                    style: TextStyle(
                                      color: Color(0xff222B44),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              VerticalDivider(
                                color: Colors.black,
                                thickness: 2,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Chess tournament',
                                    style: TextStyle(
                                      color: Color(0xff222B44),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Color(0xff222B44),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        'Riyadh',
                                        style: TextStyle(
                                          color: Color(0xff222B44),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 17,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.group,
                                        color: Color(0xff222B44),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '16',
                                        style: TextStyle(
                                          color: Color(0xff222B44),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 130,
                          width: 320,
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                          decoration: BoxDecoration(
                            color: Color(0xFFFEF9EB),
                            border: Border.all(color: Colors.black54, width: 2),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: Color(0xff222B44),
                                    size: 28,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '07 Nov',
                                    style: TextStyle(
                                        color: Color(0xff222B44),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '4:30 AM',
                                    style: TextStyle(
                                      color: Color(0xff222B44),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              VerticalDivider(
                                color: Colors.black,
                                thickness: 2,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Chess tournament',
                                    style: TextStyle(
                                      color: Color(0xff222B44),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Color(0xff222B44),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        'Riyadh',
                                        style: TextStyle(
                                          color: Color(0xff222B44),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 17,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.group,
                                        color: Color(0xff222B44),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '16',
                                        style: TextStyle(
                                          color: Color(0xff222B44),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 130,
                          width: 320,
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                          decoration: BoxDecoration(
                            color: Color(0xFFFEF9EB),
                            border: Border.all(color: Colors.black54, width: 2),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: Color(0xff222B44),
                                    size: 28,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '07 Nov',
                                    style: TextStyle(
                                        color: Color(0xff222B44),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '4:30 AM',
                                    style: TextStyle(
                                      color: Color(0xff222B44),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              VerticalDivider(
                                color: Colors.black,
                                thickness: 2,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Chess tournament',
                                    style: TextStyle(
                                      color: Color(0xff222B44),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Color(0xff222B44),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        'Riyadh',
                                        style: TextStyle(
                                          color: Color(0xff222B44),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 17,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.group,
                                        color: Color(0xff222B44),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '16',
                                        style: TextStyle(
                                          color: Color(0xff222B44),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
