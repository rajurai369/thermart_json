import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:themart/controller/slide.dart';

import '../controller/product.dart';
import '../widgets/product.dart';
import '../widgets/slides.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var sc = Get.find<SlideController>();
    var pc = Get.find<ProductController>();
    return SafeArea(
        child: Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.amber,
        children: [
          SpeedDialChild(
            label: 'Mail',
            child: const Icon(Icons.email),
          ),
          SpeedDialChild(
            label: 'Mobile',
            child: const Icon(Icons.phone),
          ),
          SpeedDialChild(
            label: 'Location',
            child: const Icon(Icons.map),
          ),
        ],
      ),
      appBar: AppBar(
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_basket),
              ),
              const Text("5"),
            ],
          )
        ],
      ),
      body: Obx(() {
        if (sc.isloading.value == true) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return SingleChildScrollView(
            child: Column(
              children: [
                const Slides(),
                const FeatureProduct(
                  title: "Featured product,subtitle",
                  subtitle: "New product is coming",
                ),
                Row(
                  children: [
                    SizedBox(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: pc.products.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              child: SizedBox(
                                width: 200,
                                height: 200,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 200,
                                      width: 200,
                                      child: Image.network(
                                          pc.products[index].image),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                )
              ],
            ),
          );
        }
      }),
    ));
  }
}
