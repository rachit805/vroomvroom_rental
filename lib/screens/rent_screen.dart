import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vroomvroom_app/widgets/c_text.dart';

class RentScreen extends StatelessWidget {
  const RentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double sW = MediaQuery.of(context).size.width;

    double sH = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "RENTAL PROCESS",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Column(
              children: [
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(30),
                  dashPattern: const [6, 3], // Length of dashes and gaps
                  color: Colors.orangeAccent, // Border color
                  strokeWidth: 2, // Border width
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                Colors.orangeAccent.withOpacity(0.2),
                            child: const Icon(
                              Icons.calendar_today,
                              color: Colors.orangeAccent,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Center(
                            child: CText(
                                text: "Select date & pickup location",
                                size: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: sW * 0.05),
                          child: const VerticalDivider(),
                        ))),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(30),
                  dashPattern: const [6, 3], // Length of dashes and gaps
                  color: Colors.greenAccent, // Border color
                  strokeWidth: 2, // Border width
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                Colors.greenAccent.withOpacity(0.2),
                            child: const Icon(
                              Icons.select_all,
                              color: Colors.greenAccent,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Center(
                            child: CText(
                                text: "Select from thre list of bikes/scooters",
                                size: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: sW * 0.05),
                          child: const VerticalDivider(),
                        ))),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(30),
                  dashPattern: const [6, 3], // Length of dashes and gaps
                  color: Colors.redAccent, // Border color
                  strokeWidth: 2, // Border width
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.redAccent.withOpacity(0.2),
                            child: const Icon(
                              Icons.calendar_today,
                              color: Colors.redAccent,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Center(
                            child: CText(text: "Submit KYC Document", size: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: sW * 0.05),
                          child: const VerticalDivider(),
                        ))),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(30),
                  dashPattern: const [6, 3], // Length of dashes and gaps
                  color: Colors.orangeAccent, // Border color
                  strokeWidth: 2, // Border width
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                Colors.orangeAccent.withOpacity(0.2),
                            child: const Icon(
                              Icons.payment,
                              color: Colors.orangeAccent,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Center(
                            child: CText(text: "Pay & book the Bike", size: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: sW * 0.05),
                          child: const VerticalDivider(),
                        ))),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(30),
                  dashPattern: const [6, 3], // Length of dashes and gaps
                  color: Colors.blueAccent, // Border color
                  strokeWidth: 2, // Border width
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blueAccent.withOpacity(0.2),
                            child: const Icon(
                              Icons.bike_scooter_outlined,
                              color: Colors.blueAccent,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Center(
                            child: CText(text: "Enjoy the Ride", size: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
