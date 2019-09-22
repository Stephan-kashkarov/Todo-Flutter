import 'package:flutter/material.dart';
import '../services/db.dart' as api;

class Login extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(),
			body: Container(
				alignment: Alignment(0.0, 0.0),
				margin: new EdgeInsets.all(30),
				color: Colors.grey[200],
				child: LoginForm(),
			),
		);
	}
}


class LoginForm extends StatefulWidget {

	@override
	_LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  final _formKey = GlobalKey<FormState>();
  final _controlUser = TextEditingController();
  final _controlPass = TextEditingController();

  void dispose() {
    _controlUser.dispose();
    _controlPass.dispose();
    super.dispose();
  }

  String _validateUser(user) {
    return null;
  }

  String _validatePass(pass) {
    return null;
  }

	@override
	Widget build(BuildContext context) {
		return Form(
			key: _formKey,
			child: Column(
				children: <Widget>[
          Text("Username"),
          TextFormField(
            validator: _validateUser,
            controller: _controlUser,
            decoration: InputDecoration(
              hintText: 'Username',
            ),
          ),
          Text("Password"),
          TextFormField(
            validator: _validatePass,
            controller: _controlPass,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          ),
          RaisedButton(
            child: Text("Login"),
            onPressed: () {
              if (_formKey.currentState.validate()){
                // api.authUser(user, hash.pass)
              }
            },
          )
        ],
			),
		);
	}
}