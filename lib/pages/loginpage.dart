
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  late String _email, _password;
  bool _isHidden = true;
  // final auth = FirebaseAuth.instance;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 400),
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
                    padding: const EdgeInsets.only(left: 150, top: 10),
                    child: Text("Login", style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'PTSerif'
                    ),),
                  ),
                  SizedBox(height: 10,),


                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "email cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        _email = value.trim();
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail_outline),
                        border: OutlineInputBorder(borderRadius: BorderRadius
                            .all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.blue),),
                        labelText: 'Email',
                        hintText: 'Enter Email here',
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),


                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: TextFormField(
                      onChanged: (value) {
                        _password = value.trim();
                      },
                      obscureText: _isHidden,
                      decoration: InputDecoration(

                        prefixIcon: Icon(Icons.person),
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

                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        }
                        return null;
                      },

                    ),

                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: MaterialButton(
                      minWidth: 250,
                      height: 60,
                      onPressed: () async {

                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text("Login",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: TextButton(onPressed: () {
                     // Navigator.pushNamed(context, MyRoutes.forgetpassRoute);
                    },
                      child: Text(
                          '  Forgot password?',
                          style: TextStyle(
                              inherit: true,
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:40),
                        child: Text(
                            'Do not have have an account',
                            style: TextStyle(
                                inherit: true,
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w400)),
                      ),
                      TextButton(onPressed: () {
                        Navigator.pushNamed(context, Myroutes.signupRoute);
                      },
                        child: Text(
                            '  Sign Up',
                            style: TextStyle(
                                inherit: true,
                                fontSize: 17,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),

                    ],
                  ),

                ]),
              ),
            ),
           Padding(
             padding: const EdgeInsets.all(50.0),
             child: Image(image: AssetImage('assets/images/login.png')),
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