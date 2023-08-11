import 'package:fintech_app_getx/app/colors_const.dart';
import 'package:fintech_app_getx/app/widgets/invest/invest_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ongoing Campaigns'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: const [
          CardWidget(
            dayCount: 6,
            name: 'Swap (LiveWire)',
            shortDetails: 'Re-commerce Platform',
            longDetails: '20+ physical shops all over Bangladesh and beyond!',
            imageUrl: 'assets/logo/png/swap.png',
            profitPercentage: 15,
            unit: 'per annum',
            repaymentTK: 46000,
          ),
          CardWidget(
            name: 'Turtle Venture',
            shortDetails: 'Capacity Development Trainer',
            longDetails:
                'Served 115+ Startups & SMEs, worked with 50+ Local & International...',
            imageUrl: 'assets/logo/png/turtle_venture.png',
            profitPercentage: 15,
            toProfitPercentage: 20,
            unit: 'per annum',
            repaymentTK: 46800,
          ),
        ],
      ),
      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (BuildContext context) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: SizedBox(
              height: Get.height * 0.3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                        'Adjust your investment amount and see live preview of projected repayment'),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GetBuilder<HomeController>(builder: (controller) {
                          return ElevatedButton(
                            onPressed: () {
                              controller.bottomSheetValue -= 10000;
                              controller.update();
                            },
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.do_not_disturb_on_outlined),
                                Text('10K'),
                              ],
                            ),
                          );
                        }),
                        GetBuilder<HomeController>(builder: (controller) {
                          return InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child: Container(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
                                          'Card in Dialog',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 16.0),
                                        GetBuilder<HomeController>(
                                            builder: (controller) {
                                          return TextFormField(
                                            decoration: const InputDecoration(
                                              labelText:
                                                  'Investment Amount (Tk)',
                                            ),
                                            controller: controller
                                                .dialogTextEditingController,
                                            keyboardType: TextInputType.number,
                                          );
                                        }),
                                        const SizedBox(height: 16.0),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {},
                                              child: const Text('Save'),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xff334155),
                                              ),
                                              child: const Text(
                                                'Cancel',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColor.elevatedButtonColor),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text('TK ${controller.formatNumber()}'),
                            ),
                          );
                        }),
                        GetBuilder<HomeController>(builder: (controller) {
                          return ElevatedButton(
                            onPressed: () {
                              controller.bottomSheetValue += 10000;
                              controller.update();
                            },
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.add_circle_outline),
                                Text('10K'),
                              ],
                            ),
                          );
                        }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
