import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vroomvroom_app/controller/home_controller.dart';
import 'package:vroomvroom_app/widgets/c_text.dart';
import 'package:vroomvroom_app/widgets/v_card.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeController controller = HomeController();
  List<Widget> carousel_list = [];

  @override
  Widget build(BuildContext context) {
    double sW = MediaQuery.of(context).size.width;
    double sH = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(100, 60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AppBar(
              backgroundColor: Colors.white,
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Colors.redAccent,
                    size: 30,
                  ),
                  Text(
                    "Bhopal",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                ],
              ),
              actions: const [
                Column(
                  children: [
                    Text(
                      "Vroom Vroom\nRentals",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // CarouselSlider(
              //     items: carousel_list, options: CarouselOptions()),

              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Image.asset(
                  "assets/images/c1.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CText(
                      text: "Our Renting Fleet",
                      size: 22,
                    ),
                    VButton(controller: controller)
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 250,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return const Padding(
                          padding: EdgeInsets.only(right: 5), child: VCard());
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CText(
                    text: "Why Vroom Vroom?",
                    size: 22,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 120,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          width: sW * 0.65,
                          decoration: BoxDecoration(
                              color: Colors.amberAccent,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blueAccent,
                                  child: Icon(
                                    Icons.person,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  child: Column(
                                    children: [
                                      CText(
                                          text:
                                              "Freedom from Qwnership Hassles",
                                          size: 15),
                                      CText(
                                          text:
                                              "Own the vehicle without owning hefty down-payments, EMIs and paperwork.",
                                          size: 12),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VButton extends StatelessWidget {
  const VButton({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => InkWell(
                onTap: () {
                  controller.selectbike.value = true;
                  controller.selectscooter.value = false;
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: controller.selectbike.value
                          ? Colors.blueAccent
                          : Colors.blueGrey,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: Text(
                      "Bike",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => InkWell(
                onTap: () {
                  controller.selectscooter.value = true;
                  controller.selectbike.value = false;
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: controller.selectscooter.value
                          ? Colors.blueAccent
                          : Colors.blueGrey,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: Text(
                      "Scooter",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
