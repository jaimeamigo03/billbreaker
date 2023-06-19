import 'package:billbreaker/Controllers/checkoutController.dart';
import 'package:billbreaker/Screens/confirmationScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controllers/mainController.dart';
import 'finalScreen.dart';

class checkoutScreen extends GetView<CheckoutController> {
  final MainController _mainController = Get.find();
  @override
  Widget build(context) {
    return Scaffold(
        body: Center(
            child: Padding(
                padding: const EdgeInsets.only(
                  top: 50.0,
                  bottom: 40,
                ),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(children: [
                        IconButton(
                          alignment: Alignment.topLeft,
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            Get.to(ConfirmationScreen());
                          },
                        ),
                      ]),
                    ),
                    Container(
                      height: 75,
                      width: double.infinity,
                      child: Text("Elegí tu método de pago",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                          ))),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                    ),
                    Container(
                        width: 350,
                        height: 500,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 4,
                                blurRadius: 4,
                                offset: Offset(0, 5),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Container(
                                  height: 100,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.black),
                                      color: Colors.green),
                                  child: TextButton(
                                    onPressed: () {
                                      _mainController
                                          .createUser(_mainController.usuario);
                                    },
                                    child: Text(
                                      "Efectivo",
                                      style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                      )),
                                    ),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.black),
                                      color: Colors.blue[900]),
                                  child: TextButton(
                                    onPressed: () {
                                      _mainController
                                          .createUser(_mainController.usuario);
                                    },
                                    child: Text(
                                      "Visa",
                                      style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                      )),
                                    ),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.black),
                                      color: Colors.blue),
                                  child: TextButton(
                                    onPressed: () {
                                      _mainController
                                          .createUser(_mainController.usuario);
                                    },
                                    child: Text(
                                      "Mercado Pago",
                                      style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                      )),
                                    ),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.black),
                                      color: Colors.black),
                                  child: TextButton(
                                    onPressed: () {
                                      _mainController
                                          .createUser(_mainController.usuario);
                                    },
                                    child: Text(
                                      "Mastercard",
                                      style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                      )),
                                    ),
                                  )),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                  ]),
                ))));
  }
}
