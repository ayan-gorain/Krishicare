import 'package:flutter/material.dart';

class imagecl extends StatefulWidget {
  const imagecl({Key? key}) : super(key: key);

  @override
  State<imagecl> createState() => _imageclState();
}

class _imageclState extends State<imagecl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Plant image Classification"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0,top: 80),
              child: Image(image: AssetImage('assets/images/dd.png')),
            ),
            SizedBox(height: 30,),
            Center(
              child: Text("Plant name:strawberry leaf scorch",style: TextStyle(
                fontSize: 20,
              ),),
            ),
            SizedBox(height: 30,),
            Center(
              child: Text("Confidence level:80.652",style: TextStyle(
                fontSize: 20,
              ),),
            ),

          ],
        ),
      ),
    );
  }
}
