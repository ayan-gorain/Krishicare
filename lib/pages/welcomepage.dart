import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:leaf_detection/pages/user_image_picker.dart';


class welcomepage extends StatefulWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(),
      appBar: AppBar(
      ),

      body: SingleChildScrollView(
        child: Column(
            children: [
              CarouselSlider(items:[

                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/c5.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/c4.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/c1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //4th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/c2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //5th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/c3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

              ],
                options: CarouselOptions(
                  height: 330.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),),
              SizedBox(height: 34,),
              Text("KrisiCare",style: TextStyle(
                fontSize: 90,fontWeight: FontWeight.w700,fontFamily: 'Dancing',
              ),),
              SizedBox(height: 34,),
              MaterialButton(
                minWidth:350,
                height: 50,
                onPressed: () {
               //   Navigator.pushNamed(context, Myroutes.signupRoute );
                },
                color: Colors.yellow,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: Text("Know About Diseaes",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    )),
              ),
              imagepicker(),
            ],

        ),
      ),
    );
  }
}
