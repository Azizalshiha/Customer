import 'package:faality/shared/const.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'dart:math' as math;

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  static double start = 0.0;
  static double end = 24.0;
  RangeValues values = RangeValues(start, end);

  static var firsthour = 0;
  static var lasthour = 0;

  double distance = 5;
  double hours = 0;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF9EB),
      appBar: AppBar(
        backgroundColor: const Color(0xff222B44),
        centerTitle: true,
        elevation: 0.0,
        leading: Transform.rotate(
          angle: 180 * math.pi / 144,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.add,
              size: 28,
              color: Color(0xFFFEF9EB),
            ),
          ),
        ),
        title: Text(
          'Filter',
          style: lighttext,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 392,
              width: double.infinity,
              decoration: darkCont,
              child: TableCalendar(
                focusedDay: focusedDay,
                firstDay: DateTime(2021),
                lastDay: DateTime(2030),
                headerStyle: HeaderStyle(
                  leftChevronIcon: Icon(
                    Icons.chevron_left,
                    color: Color(0xFFFEF9EB),
                  ),
                  rightChevronIcon: Icon(
                    Icons.chevron_right,
                    color: Color(0xFFFEF9EB),
                  ),
                  titleCentered: true,
                  formatButtonVisible: false,
                  titleTextStyle: TextStyle(
                    color: const Color(0xFFFEF9EB),
                    fontSize: 16,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                calendarStyle: CalendarStyle(

                  selectedDecoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  selectedTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  isTodayHighlighted: true,
                  todayTextStyle: TextStyle(
                    color: Color(0xFFFEF9EB),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  todayDecoration: BoxDecoration(
                    color: Color(0xff222B44),
                  ),
                  weekendTextStyle: calstyl,
                  defaultTextStyle: calstyl,
                  //outsideTextStyle: outsidestyl,
                  disabledTextStyle: outsidestyl,
                ),
                selectedDayPredicate: (DateTime date){
                  return isSameDay(selectedDay, date);
                },
                onDaySelected: (DateTime selectDay, DateTime focusDay) {
                  setState(() {
                    selectedDay = selectDay;
                    focusedDay = focusDay;
                  });
                  print(focusedDay);
                },
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Filter by time',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 0.15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$firsthour:00 - $lasthour:00',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  RangeSlider(
                    min: start,
                    max: end,
                    values: values,
                    onChanged: (val) {
                      setState(() {
                        values = val;
                        firsthour = val.start.toInt();
                        lasthour = val.end.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Filter by location',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 0.15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'less than $distance km',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    min: 5,
                    max: 30,
                    activeColor: Colors.deepOrange,
                    inactiveColor: Colors.deepOrangeAccent,
                    divisions: 25,
                    value: distance,
                    onChanged: (newdistance) {
                      setState(() => distance = newdistance);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
