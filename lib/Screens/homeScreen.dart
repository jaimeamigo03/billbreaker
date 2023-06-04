import 'package:billbreaker/Controllers/homescreenController.dart';
import 'package:billbreaker/Screens/selectionScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 75.0),
                  child: Container(
                    padding: EdgeInsets.only(top: 30),
                    alignment: Alignment.center,
                    child: Text(
                      "billbreaker",
                      style: GoogleFonts.lora(
                          textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 64,
                        fontWeight: FontWeight.w400,
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Container(
                    width: 350,
                    height: 70,
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
                      padding: const EdgeInsets.only(left: 30.0, top: 3),
                      child: TextField(
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 25,
                          ),
                        ),
                        decoration: const InputDecoration(
                          floatingLabelAlignment: FloatingLabelAlignment.start,
                          hintText: "Apodo",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 25,
                            fontWeight: FontWeight.w200,
                          ),
                          border: InputBorder.none,
                        ),
                        onSubmitted: (t) {
                          controller.Apodo.value = t;
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  height: 400,
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
                  child: BlockPicker(
                    pickerColor: Colors.black,
                    availableColors: [
                      Colors.red,
                      Colors.pink,
                      Colors.purple,
                      Colors.blue,
                      Colors.lightBlue,
                      Colors.blueAccent,
                      Colors.cyan,
                      Colors.green,
                      Colors.greenAccent,
                      Colors.lightGreenAccent,
                      Colors.yellow,
                      Colors.yellowAccent,
                      Colors.orange,
                      Colors.deepOrange,
                      Colors.grey,
                      Colors.black,
                    ],
                    onColorChanged: (c) {
                      controller.Color.value = c;
                    },
                    layoutBuilder: (context, colors, child) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, right: 30, bottom: 30),
                        child: GridView(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 80,
                            childAspectRatio: 1,
                            mainAxisExtent: 80,
                          ),
                          children: [for (Color color in colors) child(color)],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
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
                )
              ],
            ),
          ),
        ));
  }
}
