import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              SizedBox(height: 10),

              Container(height: 200, width: 376, color: Color(0xffE4F2FD)),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(width: 30, height: 30, color: Color(0xffE0E0E0)),
                  Container(width: 330, height: 25, color: Color(0xffE0E0E0)),
                ],
              ),

              SizedBox(height: 8),

              Divider(
                color: Color(0xffE0E0E0),
                thickness: 1,
                indent: 16,
                endIndent: 16,
              ),

              SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(width: 185, height: 50, color: Color(0xffA5D6A7)),
                      SizedBox(height: 5),
                      Container(width: 185, height: 50, color: Color(0xffA5D6A7)),
                    ],
                  ),
                  Container(width: 80, height: 100, color: Color(0xffFFCC80)),
                  Container(width: 80, height: 100, color: Color(0xffFFCC80)),
                ],
              ),

              SizedBox(height: 10),

              Container(
                color: Color(0xffF3E5F6),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(width: 90, height: 100, color: Color(0xffE1BEE8)),
                    SizedBox(width: 9),

                    Column(
                      children: [
                        Container(width: 90, height: 45, color: Color(0xffCF93D9)),
                      
                        Container(width: 90, height: 10, color: Color(0xffE1BEE8)),
                      
                        Container(width: 90, height: 45, color: Color(0xffCF93D9)),
                      ],
                    ),
                    SizedBox(width: 9),

                    Container(width: 90, height: 100, color: Color(0xffE1BEE8)),
                    Container(width: 90, height: 100, color: Color(0xffF3E5F6)),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(width: 180, height: 80, color: Color(0xffB2DFDC)),
                  Container(width: 180, height: 80, color: Color(0xff80CBC4)),
                ],
              ),

              SizedBox(height: 10),

              Container(height: 60, width: 380, color: Color(0xffE0E0E0)),

              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}