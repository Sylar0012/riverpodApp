import 'package:flutter/material.dart';
import 'package:workspace/pages/BuildAppbar.dart';
import 'package:workspace/size.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar("Welcome"),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(gap_m),
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Container(
                    width: 400,
                    child: Column(
                      children: [
                        SizedBox(height: gap_xl),
                        _buildLoginForm("Eamil"),
                        SizedBox(height: gap_l),
                        _buildLoginForm("Password"),
                        SizedBox(height: gap_xl),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            fixedSize: Size(200, 50),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/home");
                          },
                          child: Text(
                            "Enter",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginForm(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(height: gap_s),
        TextFormField(
          validator: (value) =>
              value!.isEmpty ? "Please enter some text" : null,
          obscureText: text == "Password" ? true : false,
          decoration: InputDecoration(
            hintText: "Enter $text",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigo),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigo),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigo),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigo),
            ),
          ),
        ),
      ],
    );
  }

  AppBar _buildAppBar(String text) {
    return AppBar(
      backgroundColor: Color(0xff3860c4),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                text,
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
