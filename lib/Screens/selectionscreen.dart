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
                child: SingleChildScrollView(
                  child: ListView(shrinkWrap: true, children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.cart.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          //Aca agrego una row
                          title: Text('${controller.cart[index].name}'),
                        );
                      },
                    ),
                  ]),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(color: Colors.black)),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Siguiente",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    )),
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
