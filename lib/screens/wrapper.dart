import 'package:faality/models/user.dart' as u;
import 'package:faality/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:faality/screens/home/home.dart';
import 'package:provider/provider.dart';

import 'home/nav.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<u.User?>(context);



    //return either home or authenticate widget
    if(user == null){
      return Authenticate();
    } else {
      return nav();
    }
  }
}
