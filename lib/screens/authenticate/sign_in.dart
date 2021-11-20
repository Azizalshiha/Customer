import 'package:faality/screens/authenticate/register.dart';
import 'package:flutter/material.dart';
import 'package:faality/shared/const.dart';

class SignIn extends StatefulWidget {

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222B44),
      appBar: AppBar(
        backgroundColor: Color(0xff222B44),
        title: Text('Sign in',
          style: lighttext
        ),
        actions: [
          TextButton.icon(
            icon: Icon(Icons.person),
            label: Text('register'),
            style: TextButton.styleFrom(
              primary: const Color(0xffF0D5A3),
            ),
            onPressed: (){
              Register();
            },
          )
        ],
      ),
      body: Container(
        decoration: whiteCont,
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
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffF0D5A3),
                ),

                child: Text(
                  'sign in',
                  style: darktext
                ),
                  onPressed: () {
                  }
              ),
              SizedBox(height: 12),
              Text(
                error,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
