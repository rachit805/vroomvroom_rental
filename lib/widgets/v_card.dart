import 'package:flutter/material.dart';
import 'package:vroomvroom_app/widgets/booking_menu.dart';

class VCard extends StatelessWidget {
  const VCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/activa.webp",
                height: 150,
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      "Activa 5G",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Price- 120/-",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context, builder: (builder) => BookingMenu());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Book Now"),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }

  Widget bookingbuttomSheet(BuildContext context) {
    double sW = MediaQuery.of(context).size.width;
    double sH = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      height: sH * 0.5,
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 3),
              child: SizedBox(
                  width: sW * 0.5,
                  child: const Divider(
                    thickness: 5,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
