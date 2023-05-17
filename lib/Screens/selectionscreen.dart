import 'package:billbreaker/Screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:billbreaker/Controllers/selectionController.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectionCart extends GetView<CartController> {
  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50.0,
            bottom: 40,
          ),
          child: Column(
            children: [
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
                height: 40,
                width: double.infinity,
                child: Text("Seleccioná tus productos",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                    ))),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height: 450,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                child: Scrollbar(
                  thumbVisibility: true,
                  controller: ScrollController(
                    initialScrollOffset: 0.0,
                    keepScrollOffset: true,
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 0),
                    shrinkWrap: true,
                    itemCount: controller.cart.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          ListTile(
                            title: Container(
                              height: 50,
                              width: 210,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Text(controller.cart[index].name,
                                        style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                        )),
                                    Text(
                                      " x${controller.cart[index].quantity}",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            subtitle: Row(
                              children: [
                                Text(
                                  "\$${controller.cart[index].price}",
                                  style: GoogleFonts.poppins(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 70,
                width: 350,
                child: Container(
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
                      borderRadius: BorderRadius.circular(35)),
                  child: FloatingActionButton.extended(
                    backgroundColor: Color.fromRGBO(40, 210, 148, 1),
                    elevation: 0,
                    onPressed: () {
                      Get.to(SelectionCart());
                    },
                    label: Text(
                      "Siguiente",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                      )),
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
