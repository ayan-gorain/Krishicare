import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboardingpage extends StatefulWidget {
  const Onboardingpage({Key? key}) : super(key: key);

  @override
  State<Onboardingpage> createState() => _OnboardingpageState();
}

class _OnboardingpageState extends State<Onboardingpage> {
  final controller=PageController();
  bool isLastPage=false;
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  Widget buildPage({
    required Color color,
    required String title,
    required String urlImage,
    required String subtitle,
  })=>
      Container(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(urlImage,
                fit: BoxFit.cover,
                width:300),
            const SizedBox(height: 40),
            Text(title,
              textAlign:TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),),
            const SizedBox(height: 40),
            Container(
              child: Text(subtitle,
                textAlign:TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            )],
        ),

      );
  // git push --set-upstream origin FlutterApp
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(bottom:70),
            child: PageView(
              controller: controller,
              onPageChanged: (index){
                setState(() =>isLastPage=index==2);
              },
              children: [

                buildPage(
                    color: Colors.white,
                    title: "Discover the best recipes you needed",
                    urlImage: 'assets/images/22.jpg',

                    subtitle: "healthy recipies made by people for your healthy life"
                ),buildPage(
                    color: Colors.white60,
                    title: "Recipy Finder",
                    urlImage: 'assets/images/ttt.jpg',

                    subtitle: ""
                ),
                buildPage(
                    color: Colors.white,
                    title: "",
                    urlImage: 'assets/images/r3.webp',

                    subtitle: ""
                ),


              ],
            ),
          ),
        ),
        bottomSheet:isLastPage
            ? TextButton(
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),

                ),
                primary:Colors.white,
                backgroundColor: Colors.tealAccent,
                minimumSize: const Size.fromHeight(80)
            ),
            onPressed: () async{}, child: const Text("Get Started",
            style:TextStyle(fontSize: 24))):
        Container(
            height:80,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(

                    onPressed: ()=>controller.jumpToPage(5),
                    child: const Text("SKIP")),
                SmoothPageIndicator(
                  controller: controller,
                  count:3,
                  axisDirection: Axis.horizontal,
                  effect: JumpingDotEffect(
                    dotHeight: 16,
                    dotWidth: 16,
                    jumpScale: .7,
                    verticalOffset: 15,
                  ),
                  onDotClicked: (index)=>controller.animateToPage(
                      index, duration:const  Duration(microseconds: 500), curve: Curves.easeIn),
                ),
                TextButton(onPressed: ()=>controller.nextPage(duration: const Duration(microseconds: 500),
                    curve: Curves.easeInOut), child: const Text("NEXT")),
              ],

            )
        )
    );
  }
}
