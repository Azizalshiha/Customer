import 'package:faality/screens/authenticate/sign_in.dart';
import 'package:faality/shared/const.dart';
import 'package:flutter/material.dart';


class Register extends StatefulWidget {

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0D5A3),
      appBar: AppBar(
        backgroundColor: const Color(0xff222B44),
        title: Text('Sign up',
        style: lighttext,
        ),
        actions: [
          TextButton.icon(
            icon: Icon(Icons.person),
            label: Text('Sign in'),
            style: TextButton.styleFrom(
              primary: const Color(0xffF0D5A3),
            ),
            onPressed: (){
              SignIn();
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
                validator: (val) => val!.isEmpty ? 'Enter email' : null,
                onChanged: (val){
                  setState(() => email = val);
                },

              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
                validator: (val) => val!.length < 6 ? 'Enter 6+ password' : null,
                onChanged: (val){
                  setState(() => password = val);
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  onPressed: ()  {
                  }
              ),
              SizedBox(height: 12),
              Text(
                error,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
