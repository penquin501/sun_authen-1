import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final Widget child;

  Register({Key key, this.child}) : super(key: key);

  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register'),
          actions: <Widget>[
            IconButton(
              tooltip: 'Upload To Server',
              icon: Icon(Icons.cloud_upload),
              onPressed: () {
                uploadToServer();
              },
            )
          ],
        ),
        body: Form(
          key: formKey,
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 50.0),
                child: nameTextField(),
              ),
              Container(
                margin: EdgeInsets.only(left: 50.0, right: 50.0),
                child: emailTextField(),
              ),
              Container(
                margin: EdgeInsets.only(left: 50.0, right: 50.0),
                child: passwordTextField(),
              )
            ],
          ),
        ));
  }

  void uploadToServer() {
    print('You Click Upload');
    // formKey.currentState.reset();
    print(formKey.currentState.validate());

  }
} // _RegisterState Class

Widget nameTextField() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Name:', hintText: 'Name Only'),
    validator: (String value) {
      if (value.length == 0) {
        return 'Name not Blank ?';
      }
    },
  );
}

Widget emailTextField() {
  return TextFormField(
    decoration:
        InputDecoration(labelText: 'Email Address:', hintText: 'you@abc.com'),
  );
}

Widget passwordTextField() {
  return TextFormField(
    decoration:
        InputDecoration(labelText: 'Password:', hintText: 'more 5 Charactor'),
  );
}
