import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();

}

class _signupState extends State<signup> {
  var email='';
  var password='';
  bool _isHidden = true;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 320),
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: VStack([
                  Padding(
                    padding: const EdgeInsets.only(left: 120,top: 10),
                    child: Text("Sign up",style: TextStyle(
                        fontSize: 50,fontWeight: FontWeight.w700,fontFamily: 'PTSerif'
                    ),),
                  ),
                  SizedBox(height: 60,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.blue),),
                        labelText: 'Full Name',
                        hintText: 'Enter Name here',
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: TextField(
                      onChanged: (value){
                        email=value;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.blue),),
                        labelText: 'Email',
                        hintText: 'Enter Email here',
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),


                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: TextFormField(
                      onChanged: (value){
                        password=value;
                      },
                      obscureText: _isHidden,
                      decoration: InputDecoration(

                        prefixIcon : Icon(Icons.person),
                        labelText: 'Password',
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.blue),

                        ),
                        hintText: 'Enter Password here',
                        suffix: SizedBox(
                          width: 30,
                          child: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(
                              _isHidden
                                  ? Icons.visibility
                                  : Icons.visibility_off, size: 18,
                            ),
                          ),
                        ),
                      ),

                      validator: (value){
                        if(value!.isEmpty){
                          return "Password cannot be empty";
                        }
                        return null;

                      },

                    ),

                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: MaterialButton(
                      minWidth:250,
                      height: 60,
                      onPressed: (){},
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text("Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),

                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image(image: AssetImage('assets/images/signup.png')),
            )
          ],
        ),
      ),
    );
  }
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

}
