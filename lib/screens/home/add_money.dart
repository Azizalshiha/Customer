import 'package:faality/shared/const.dart';
import 'package:flutter/material.dart';

class Balance extends StatefulWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  _BalanceState createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {

  dynamic counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222B44),
      appBar: AppBar(
        backgroundColor: Color(0xff222B44),
        elevation: 1,
        centerTitle: true,
        title: Text(
          'Add money',
          style: lighttext,
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        decoration: whiteCont,
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'How much you want to add',
              ),
              onChanged: (val){
                setState(() {
                  counter = val;
                });
              },
            ),
            SizedBox(width: 8,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffF0D5A3),
              ),
              child: Text(
                  'add money',
                  style: darktext
              ),
              onPressed: (){

              },
            ),
          ],
        ),
      ),
    );
  }
}
