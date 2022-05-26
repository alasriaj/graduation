import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:graduation/app/modules/calculator_module/calculator_controller.dart';

import '../../../constants.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class calculatorPage extends GetView<calculatorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('حاسبة معاش التقاعد')),
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'asset/financial_document_calculator_pen_dollar_coin_money_icon_205706.png',
                height: 100,
              ),
              Form(
                key: controller.formKey.value,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Obx(() {
                      return Row(
                        children: [
                          Flexible(
                            flex: 35,
                            child: Text(
                              'نوع الجنس:',
                              style: TextStyle(
                                color: Color(0xff1572a1),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 50,
                            child: RadioListTile(
                                value: 0,
                                groupValue: controller.type.value,
                                onChanged: (int? x) {
                                  controller.type(x);
                                },
                                title: Text(
                                  'ذكر',
                                )),
                          ),
                          Flexible(
                            flex: 50,
                            child: RadioListTile(
                                value: 1,
                                groupValue: controller.type.value,
                                onChanged: (int? x) {
                                  controller.type(x);
                                },
                                title: Text(
                                  'انثى',
                                )),
                          ),
                        ],
                      );
                    }),
                    TextInputField(
                      hint: 'سنة الميلاد'.tr,
                      focusNode: controller.nodes[0],
                      textEditingController: controller.brithYear.value,
                      inputAction: TextInputAction.done,
                      inputType: TextInputType.phone,
                      max: 4,
                      tif: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                      ],
                    ),
                    TextInputField(
                      hint: 'سنة الخدمة'.tr,
                      focusNode: controller.nodes[1],
                      textEditingController: controller.year.value,
                      inputAction: TextInputAction.done,
                      inputType: TextInputType.phone,
                      max: 4,
                      tif: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RoundedButton(
                      color: primaryColor,
                      buttonName: 'حساب'.tr,
                      function: () => controller.cal(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Obx(() {
                      return Text(
                        controller.result.value,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
