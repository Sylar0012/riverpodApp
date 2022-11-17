import 'package:flutter/material.dart';
import 'package:workspace/size.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar("Cart"),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: gap_xl),
              _buildCatalog(),
              SizedBox(height: gap_xl),
              Container(
                width: 200,
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(
                            color: Colors.blueAccent,
                            style: BorderStyle.solid,
                            width: 2),
                        fixedSize: Size(400, 100),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Buy",
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 50),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCatalog() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 400,
          height: 200,
          color: Colors.blueAccent,
        ),
        SizedBox(width: gap_xl),
        Text(
          "\$42",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
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
