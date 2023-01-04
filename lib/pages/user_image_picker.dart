import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
class imagepicker extends StatefulWidget {
  const imagepicker({Key? key}) : super(key: key);

  @override
  State<imagepicker> createState() => _imagepickerState();
}

class _imagepickerState extends State<imagepicker> {
  File? image;
  Future pickImageg() async{
    try{
      final image =await ImagePicker().pickImage(source:ImageSource.gallery);
      if(image==null)return;
      final imageTemp=File(image.path);

      setState(() => this.image=imageTemp);
    }on PlatformException catch(e){
      print("failed to pick image");
    }
  }
  Future pickImagec() async{
    try{
      final image =await ImagePicker().pickImage(source:ImageSource.camera);
      if(image==null)return;
      final imageTemp=File(image.path);

      setState(() => this.image=imageTemp);
    }on PlatformException catch(e){
      print("failed to pick image");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 40),
          Stack(
            children: [
              MaterialButton(
                minWidth:350,
                height: 50,
                onPressed: () {
                  showModalBottomSheet(context: context,
                      builder: (BuildContext context){
                        return Container(
                          height: 200,
                          color: Colors.cyan,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children:<Widget> [
                                ElevatedButton(
                                  child: Text('Camera'),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                    // side: BorderSide(color: Colors.yellow, width: 5),
                                    textStyle: const TextStyle(
                                        color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
                                    shape: BeveledRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10))),
                                    shadowColor: Colors.lightBlue,
                                  ),
                                  onPressed: () => pickImagec(),
                                ),
                                SizedBox(height: 50,),
                                ElevatedButton(
                                  child: Text('Gallary'),

                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                    // side: BorderSide(color: Colors.yellow, width: 5),
                                    textStyle: const TextStyle(
                                        color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
                                    shape: BeveledRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10))),
                                    shadowColor: Colors.lightBlue,
                                  ),
                                  onPressed: () => pickImageg(),

                                ),

                              ],
                            ),
                          ),
                        );
                      });
                },
                color: Colors.lightGreenAccent,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: Text("Scan the leaf",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    )),
              ),


            ],
          )
        ],
      ),
    );
  }
}
