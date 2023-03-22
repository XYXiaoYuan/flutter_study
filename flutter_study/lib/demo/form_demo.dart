import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FormDemo'), elevation: 0.0),
      body: Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.black),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterDemo(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterDemo extends StatefulWidget {
  @override
  _RegisterDemoState createState() => _RegisterDemoState();
}

class _RegisterDemoState extends State<RegisterDemo> {
  final registerFormKey = GlobalKey<FormState>();
  late String username, password;
  bool _autovalidate = false;

  void _submiteRegisterForm() {
    if (registerFormKey.currentState!.validate()) {
      registerFormKey.currentState!.save();

      debugPrint('username: $username');
      debugPrint('password: $password');

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Registering......'),
      ));
    } else {
      setState(() {
        _autovalidate = true;
      });
    }
  }

  String? _validatorUsername(value) {
    if (value.isEmpty) {
      return 'Username is required';
    }
    return null;
  }

  String? _validatorPassword(value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
            ),
            onSaved: (value) {
              username = value ?? "";
            },
            validator: _validatorUsername,
            // autovalidate: _autovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: '',
            ),
            onSaved: (value) {
              password = value ?? "";
            },
            validator: _validatorPassword,
            // autovalidate: _autovalidate,
          ),
          SizedBox(height: 32.0),
          Container(
              width: double.infinity,
              child: ElevatedButton(
                child: Text('Register', style: TextStyle(color: Colors.white)),
                onPressed: _submiteRegisterForm,
              ))
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // textEditingController.text = 'hi';
    textEditingController.addListener(() {
      debugPrint('input: ${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: textEditingController,
        onChanged: (value) {
          debugPrint('input: $value');
        },
        onSubmitted: (value) {
          debugPrint('submit: $value');
        },
        decoration: InputDecoration(
          icon: Icon(Icons.subject),
          labelText: 'Title',
          hintText: 'Enter the post title',
          // border: InputBorder.none,
          // border: OutlinenputBorder(),
          filled: true,
        ));
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
