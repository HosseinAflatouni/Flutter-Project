import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
    child: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [Colors.blue, Colors.purple],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    ),
    child: AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Center(
    child: Text(
    'Login',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    color: Colors.white,
    ),
    ),
    ),
    ),
    ),
    ),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: RegistrationForm(),
          ),
        ),
    );
  }
}
class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _password = '';

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter your password';
    } else if (value.length < 8) {
      return 'Password must be at least 8 characters long.';
    } else if (!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)').hasMatch(value)) {
      return 'at least uppercase letter, lowercase letter, one number.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              setState(() {
                _name = value;
              });
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
            validator: _validatePassword,
            onChanged: (value) {
              setState(() {
                _password = value;
              });
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed:() {},
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
