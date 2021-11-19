import 'package:faality/screens/home/full_photo.dart';
import 'package:faality/shared/const.dart';
import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFEF9EB),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              centerTitle: true,
              elevation: 0.0,
              title: Text(
                'Chess tournament',
                style: TextStyle(
                  color: const Color(0xffF0D5A3),
                  fontSize: 20,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: Color(0xff222B44), //const Color(0xff222B44),
            ),
          ],
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 230,
                  width: double.infinity,
                  decoration: darkCont,
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 24,
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 22,
                          ),
                        ),
                        title: Text(
                          'khaled ',
                          style: TextStyle(
                              color: Color(0xFFFEF9EB),
                              fontSize: 20,
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          'Organizer',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 12,
                              letterSpacing: 0.75,
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: IconButton(
                          icon: new Icon(Icons.star_border),
                          color: Color(0xffF0D5A3),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        height: 110,
                        width: 310,
                        decoration: smallbox,
                        child: Text(
                          'It is a long established fact that a reader will be distracted'
                          ' by the readable content of a page when looking at its layout.'
                          ' The point of using Lorem Ipsum is that it has a more-or-less normal'
                          ' distribution of letters',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                        height: 80,
                        width: 55,
                        decoration: smallbox,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: Alignment(0, -0.25),
                              child: Text('35',
                                  style: TextStyle(
                                      color: Color(0xff222B44),
                                      fontSize: 24,
                                      letterSpacing: 0.75,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'S.R.',
                              style: TextStyle(
                                  color: Color(0xff222B44),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        )),
                    Container(
                      height: 45,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 2,
                      ),
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                        height: 80,
                        width: 55,
                        decoration: smallbox,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: Alignment(0, -0.25),
                              child: Text('12',
                                  style: TextStyle(
                                      color: Color(0xff222B44),
                                      fontSize: 24,
                                      letterSpacing: 0.75,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Icon(
                              Icons.group,
                              color: Color(0xff222B44),
                              size: 20,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        )),
                    Container(
                      height: 45,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 2,
                      ),
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                        height: 80,
                        width: 55,
                        decoration: smallbox,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: Alignment(0, -0.25),
                              child: Text('26',
                                  style: TextStyle(
                                      color: Color(0xff222B44),
                                      fontSize: 24,
                                      letterSpacing: 0.75,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xff222B44),
                              size: 20,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        )),
                    Container(
                      height: 45,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 2,
                      ),
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                        height: 80,
                        width: 55,
                        decoration: smallbox,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Online',
                                style: TextStyle(
                                    color: Color(0xff222B44),
                                    fontSize: 14,
                                    letterSpacing: 0.25,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            Icon(
                              Icons.computer,
                              color: Color(0xff222B44),
                              size: 22,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                          ],
                        )),
                  ],
                ),
                Container(
                  width: 330,
                  child: Divider(
                    color: Colors.black12,
                    thickness: 2,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  height: 120,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => FullPhoto(),
                      ),
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InkWell(
                          child: Container(
                            width: 170,
                            child: Image.asset('assets/Chess.jpg'),
                          ),
                        ),
                        Container(
                          width: 170,
                          child: Image.asset('assets/Chess.jpg'),
                        ),
                        Container(
                          width: 170,
                          child: Image.asset('assets/Chess.jpg'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 330,
                  child: Divider(
                    color: Colors.black12,
                    thickness: 2,
                  ),
                ),
                Align(
                  alignment: Alignment(-0.9, 0),
                  child: Text(
                    'Starting Time',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      letterSpacing: 0.45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment(-0.9, 0),
                  child: Text(
                    '11/15',
                    style: TextStyle(
                      color: Color(0xff222B44),
                      fontSize: 15,
                      letterSpacing: 0.45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Align(
                  alignment: Alignment(-0.89, 0),
                  child: Text(
                    '7:30 PM',
                    style: TextStyle(
                      color: Color(0xff222B44),
                      fontSize: 15,
                      letterSpacing: 0.45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 330,
                  child: Divider(
                    color: Colors.black12,
                    thickness: 2,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Icon(
                        Icons.link,
                        color: Color(0xFFFEF9EB),
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 2,
                        vertical: 5,
                      ),
                      height: 40,
                      width: 250,
                      child: Text(
                          'https://zoom.us/j/99098295103?pwd=Y0laMGxYN3FWSzlKdTlDUnBVZkgydz09',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 330,
                  child: Divider(
                    color: Colors.black12,
                    thickness: 2,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    onPressed: () {},
                    child: Text("Enroll",
                        style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 2.2,
                            color: Colors.black)),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
