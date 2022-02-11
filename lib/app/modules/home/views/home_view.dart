import 'package:avanza/Utils/colors.dart';
import 'package:avanza/barcode_logic/barcode_scanner.dart';
import 'package:avanza/hasura/all_mutaion.dart';
import 'package:avanza/hasura/hasura_controller.dart';
import 'package:avanza/responsiveness.dart';
import 'package:camcode/cam_code_scanner.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  HomeController controller = Get.put(HomeController());
  HasuraService hasuraService = Get.find<HasuraService>();
  final CamCodeScannerController _controller = CamCodeScannerController();

  String _code = '';

  Widget build(BuildContext context) {
    return Scaffold(
        body:  Obx(
    () =>Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 40.kh,
        ),
        Row(
          children: [
            Column(
              children: [
                Text(
                  "Escanear QR",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Palette.Black,
                      fontSize: 35.kh,
                      fontFamily: 'Poppins-Bold'),
                ),
                Text(
                  "Inicio  / Acceso  / Escanear QR",
                  style: TextStyle(
                    fontSize: 14.kh,
                    color: Palette.blue_gray_1,
                    fontFamily: 'Poppins-Regular',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 126.kh,
        ),
        Text(
          "Apretar botón ''Escanear QR para poder ingresar \nal invitado al condominio de bodegas.",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 17.kh,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins-Regular',
              color: Palette.Black),
        ),
        SizedBox(
          height: 71.kh,
        ),
        Container(
          height: 296.kh,
          width: 296.kw,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Rectangle.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: SizedBox(
              height: 300.kh,
              width: 180.kw,
              child:
                  Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child:  AppBarcodeScannerWidget.defaultStyle(
                  resultCallback: (String code) {
                    print(code);
                    controller.count.value = code;
                    if (code.toString().contains('Exit') && controller.scanned.value == false) {
                      hasuraService.hasuraConnect.mutation(AllMutaion.QrExit(
                          uid: "${controller.count.value.toString().substring(9)}",
                          out_time: DateTime.now(),
                          state: "idle"));
                      print("Existed");
                      controller.scanned.value = true;
                     }else if (code.toString().contains('Enter') && controller.scanned.value == false) {
                      hasuraService.hasuraConnect.mutation(AllMutaion.QrEnter(
                          uid: "${controller.count.value.toString().substring(11)}",
                          in_time: DateTime.now(),
                          state: "entered"));
                      print("Entered");
                    }
                    controller.scanned.value = true;
                  },
                  label: "${controller.count.value}",
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 112.kh,
        ),
      controller.scanned.value == false
              ? Text("Ready to Scan")
              : Text("Scanned ${controller.count.value}"),

        GestureDetector(
          onTap: () {
            controller.scanned.value = false;
            print("qruery");
          },
          child: Container(
            width: 480.kw,
            height: 64.kh,
            decoration: BoxDecoration(
                color: Palette.white,
                borderRadius: BorderRadius.all(Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 12,
                    color: Color.fromRGBO(192, 231, 253, 0.5),
                  ),
                ],
                border: Border.all(
                  width: 2,
                  color: controller.scanned.value == true ? Palette.cello : Colors.red,
                )),
            child: Center(
              child: Text(
                "Escanear QR",
                style: TextStyle(
                  fontFamily: 'Poppins-Bold',
                  fontSize: 17.kh,
                  color: Palette.cello,
                ),
              ),
            ),
          ),
        ),
      ],
    )));
  }
}
