import 'package:billbreaker/Screens/confirmationScreen.dart';
import 'package:billbreaker/Screens/homeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:billbreaker/Controllers/selectionController.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controllers/homescreenController.dart';

class SelectionCart extends GetView<CartController> {
  final HomeController _homeController = Get.find();
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
                child: Text(
                    "${_homeController.Apodo.value} Seleccioná tus productos",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                    ))),
              ),
              SizedBox(height: 40),
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
                    padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                    shrinkWrap: true,
                    itemCount: controller.cart.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                              height: 80,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border:
                                    Border.all(color: Colors.grey, width: 2),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 200,
                                    height: 80,
                                    padding: EdgeInsets.only(top: 10, left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          controller.cart[index].name,
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Row(children: [
                                          Text(
                                              "\$ ${controller.cart[index].price}",
                                              style: GoogleFonts.poppins(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                              )),
                                          Text(
                                            " x${controller.cart[index].quantity}",
                                            style: GoogleFonts.poppins(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                                textStyle: const TextStyle(
                                                  color: Colors.grey,
                                                )),
                                          )
                                        ]),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 100,
                                    height: 80,
                                    child: Row(
                                      children: [
                                        Spacer(),
                                        CupertinoButton(
                                          minSize: double.minPositive,
                                          padding: EdgeInsets.zero,
                                          child: Icon(Icons.remove,
                                              color: Colors.black, size: 20),
                                          onPressed: () {
                                            controller.removeProduct(
                                                controller.cart[index]);
                                          },
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.black,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: Obx(
                                              () => Text(
                                                '${controller.cart[index].selected}',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 18,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        CupertinoButton(
                                          minSize: double.minPositive,
                                          padding: EdgeInsets.zero,
                                          child: Icon(Icons.add,
                                              color: Colors.black, size: 20),
                                          onPressed: () {
                                            print(controller
                                                .cart[index].selected);
                                            controller.addProduct(
                                                controller.cart[index]);
                                          },
                                        ),
                                        Spacer(),
                                      ],
                                    ),
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
              SizedBox(height: 20),
              Spacer(),
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
                      Get.to(ConfirmationScreen());
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
