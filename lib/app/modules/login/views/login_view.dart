import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF050522),
        body: SafeArea(
            child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 0.0),
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: Get.height * 0.5,
              width: Get.width * 0.5,
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "Welcome",
                style: GoogleFonts.roboto(
                    fontStyle: FontStyle.normal,
                    color: Colors.amberAccent,
                    fontSize: 30),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Lorem ipsum Dolor Sit amet , \nconsectuter adiscing elit , \ nsed do eismod",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 20),
            ),
            SizedBox(
              height: 21,
            ),
            Container(
              height: 60,
              width: 70,
              child: ElevatedButton(
                onPressed: () {
                  //ini untuk membuka modal ketika di klik
                  Get.bottomSheet(
                    SingleChildScrollView(
                      child: Container(
                        //ini untuk membuat container menjadi bulat
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Hello",
                                            style: TextStyle(fontSize: 25),
                                          ),
                                          Text(
                                            "Register",
                                            style: TextStyle(
                                                fontSize: 35,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Image.asset(
                                          'assets/images/Close.png',
                                          width: 50,
                                          height: 50,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                //controller: ,
                                decoration: InputDecoration(
                                    labelText: "Username..",
                                    fillColor: Colors.black,
                                    hintText: "Ferdynurmuhammad1@gmail.com",
                                    suffixIcon: Icon(Icons.mail),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2.0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                obscureText: true,
                                //controller: ,
                                decoration: InputDecoration(
                                    labelText: "Password",
                                    hintText: "masukan password",
                                    fillColor: Colors.black,
                                    suffixIcon: Icon(Icons.password),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2.0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                //controller: ,
                                decoration: InputDecoration(
                                    labelText: "Password",
                                    fillColor: Colors.black,
                                    hintText: "masukan password lagi",
                                    suffixIcon: Icon(Icons.mail),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2.0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Container(
                                  height: 60,
                                  width: Get.width,
                                  child: Center(
                                    child: Text(
                                      'Register',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF050522),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                child: Text(
                  'create account',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF050522)),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFFDE69),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFFFFDE69), width: 3),
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              width: 70,
              child: ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      //ini untuk membuat container menjadi bulat
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Welcome Back !!",
                                          style: TextStyle(fontSize: 25),
                                        ),
                                        Text(
                                          "Login",
                                          style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: Image.asset(
                                        'assets/images/Close.png',
                                        width: 50,
                                        height: 50,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            TextFormField(
                              //controller: ,
                              decoration: InputDecoration(
                                  labelText: "Username..",
                                  fillColor: Colors.black,
                                  hintText: "Ferdynurmuhammad1@gmail.com",
                                  suffixIcon: Icon(Icons.mail),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2.0),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              obscureText: true,
                              //controller: ,
                              decoration: InputDecoration(
                                  labelText: "Password",
                                  hintText: "masukan password",
                                  fillColor: Colors.black,
                                  suffixIcon: Icon(Icons.password),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2.0),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    //checkbx check
                                    Checkbox(
                                        value: this._isChecked,
                                        onChanged: (Value) {
                                          this._isChecked = Value!;
                                        }),
                                    SizedBox(width: 2),
                                    Text(
                                      "Remember me",
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                ),
                                Text("forgot Password?")
                              ],
                            ),
                            Container(
                              width: Get.width,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF050522),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF050522),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFFFFDE69), width: 3),
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "CopyRIght Frdynurm 2022",
                style: GoogleFonts.roboto(
                    fontStyle: FontStyle.normal, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        )),
      ),
    );
  }
}
