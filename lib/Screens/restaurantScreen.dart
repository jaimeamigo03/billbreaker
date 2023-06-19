import 'package:billbreaker/Controllers/restaurantController.dart';
import 'package:billbreaker/Screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controllers/mainController.dart';

class RestaurantScreen extends GetView<RestaurantController> {
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
                            Get.to(HomeScreen());
                          },
                        ),
                      ]),
                    ),
                    Container(
                        height: 75,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            _mainController.restaurantUpdater();
                          },
                          child: Text("Mesa 1",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w400,
                              ))),
                        )),
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
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Empanadas de J y Q",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Obx(
                                        () => Text(
                                          '${_mainController.totalProducts[0].selected}/${_mainController.totalProducts[0].quantity}',
                                          style: GoogleFonts.inter(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 100,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Empanadas de carne",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Obx(
                                        () => Text(
                                          '${_mainController.totalProducts[1].selected}/${_mainController.totalProducts[1].quantity}',
                                          style: GoogleFonts.inter(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 100,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Empanadas de humita",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Obx(
                                        () => Text(
                                          '${_mainController.totalProducts[2].selected}/${_mainController.totalProducts[2].quantity}',
                                          style: GoogleFonts.inter(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 100,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Empanadas de pollo",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Obx(
                                        () => Text(
                                          '${_mainController.totalProducts[3].selected}/${_mainController.totalProducts[3].quantity}',
                                          style: GoogleFonts.inter(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
