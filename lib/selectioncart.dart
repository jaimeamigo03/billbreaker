import 'package:billbreaker/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:billbreaker/selectioncartController.dart';
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
              SizedBox(height: 10),
              ListView(shrinkWrap: true, children: [
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
              ElevatedButton(onPressed: () {}, child: Text("Hola")),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
