import 'package:billbreaker/Controllers/confirmationController.dart';
import 'package:billbreaker/Controllers/selectionController.dart';
import 'package:billbreaker/Screens/checkoutScreen.dart';
import 'package:billbreaker/Screens/selectionScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controllers/homeController.dart';
import '../Controllers/mainController.dart';

class ConfirmationScreen extends GetView<ConfirmationController> {
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
                            Get.to(SelectionCart());
                          },
                        ),
                      ]),
                    ),
                    Container(
                      height: 40,
                      width: double.infinity,
                      child: Text("Confirmá tu pedido",
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
                      child: Scrollbar(
                        thumbVisibility: true,
                        controller: ScrollController(
                          initialScrollOffset: 0.0,
                          keepScrollOffset: true,
                        ),
                        child: ListView.builder(
                          padding:
                              EdgeInsets.only(top: 20, right: 20, left: 20),
                          shrinkWrap: true,
                          itemCount: _mainController.usuario.cart.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Container(
                                    height: 80,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: Colors.grey, width: 2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 200,
                                          height: 80,
                                          padding: EdgeInsets.only(
                                              top: 10, left: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${_mainController.usuario.cart[index].name}",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Row(children: [
                                                Text(
                                                    "\$ ${_mainController.usuario.cart[index].price}",
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    )),
                                                Text(
                                                  " x ${_mainController.usuario.cart[index].selected}",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      textStyle:
                                                          const TextStyle(
                                                        color: Colors.grey,
                                                      )),
                                                )
                                              ]),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40,
                                        ),
                                      ],
                                    )),
                                SizedBox(width: 350, height: 10)
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 350,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 50,
                            child: Text("Total:",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w400,
                                ))),
                          ),
                          Spacer(),
                          Container(
                            width: 200,
                            height: 50,
                            child: Text("\$${_mainController.usuario.total}",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w400,
                                ))),
                          ),
                        ],
                      ),
                    ),
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
                            Get.to(checkoutScreen());
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
                    SizedBox(height: 40),
                  ]),
                ))));
  }
}
