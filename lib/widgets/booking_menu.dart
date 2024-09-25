import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:vroomvroom_app/controller/bookingmenu_controller.dart';
import 'package:vroomvroom_app/widgets/c_text.dart';

class BookingMenu extends StatelessWidget {
  BookingMenu({super.key});
  final BookingMenuController controller =
      Get.put(BookingMenuController()); // Instantiate controller

  @override
  Widget build(BuildContext context) {
    double sW = MediaQuery.of(context).size.width;
    double sH = MediaQuery.of(context).size.height;
//  double sW = MediaQuery.of(context).size.width; // Screen width for size

    List<int> hoursList = [3, 6, 12]; // List of available hours
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xFF003249), // Your color
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      height: sH * 0.5,
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: SizedBox(
                      width: sW * 0.5,
                      child: const Divider(
                        thickness: 5,
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Search",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: Colors.white),
                  // size: 20,
                ),
                SizedBox(width: sW, child: const Divider()),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "For Hours",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        // Show the date picker when the user clicks the container
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate:
                              DateTime.now(), // Start from today's date
                          firstDate: DateTime
                              .now(), // Restrict selection to today or future dates
                          lastDate: DateTime(2101), // Max selectable date range
                        );

                        if (pickedDate != null) {
                          // If a date is selected, update it in the controller
                          controller.updateSelectedDate(pickedDate);
                        }
                      },
                      child: Container(
                        width: sW * 0.4,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white54),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Obx(() => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    controller.selectedDate
                                        .value, // Display the selected date
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.calendar_today,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                    Container(
                      width: sW * 0.4,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white54),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Obx(() => DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                dropdownColor: const Color(
                                    0xFF003249), // Optional background color
                                icon: const Icon(Icons.arrow_drop_down,
                                    color: Colors.white),
                                isExpanded: true,
                                value: controller.selectedHour.value ==
                                        "Select Hours"
                                    ? null
                                    : controller.selectedHour
                                        .value, // Get selected value
                                hint: const Text(
                                  "Select Hours",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                items: hoursList.map((int value) {
                                  return DropdownMenuItem<String>(
                                    value: value.toString(),
                                    child: Text(
                                      "$value hours",
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  controller.updateSelectedHour(
                                      newValue!); // Update value in controller
                                },
                              ),
                            )),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(),
          ),
          // const SizedBox(
          //   height: 10,
          // ),
////////////////////////////////////////////////////////////////////////
          /// Days Booking Selection
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "For Days",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: controller.selectedDate1.value,
                          firstDate: DateTime
                              .now(), // Prevent past dates from being selected
                          lastDate: DateTime(2100),
                        );
                        if (pickedDate != null) {
                          controller.updateSelectedDate1(pickedDate);
                        }
                      },
                      child: Container(
                        width: sW * 0.4,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white54)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Obx(() => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    DateFormat('yyyy-MM-dd')
                                        .format(controller.selectedDate1.value),
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  const Icon(
                                    Icons.calendar_today,
                                    color: Colors.white,
                                    size: 18,
                                  )
                                ],
                              )),
                        ),
                      ),
                    ),

                    // Second Container: Select Days
                    Container(
                      width: sW * 0.4,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white54),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Obx(() => DropdownButtonHideUnderline(
                              child: DropdownButton<int>(
                                dropdownColor: const Color(
                                    0xFF003249), // Optional background color
                                icon: const Icon(Icons.arrow_drop_down,
                                    color: Colors.white),
                                isExpanded: true,
                                value: controller.selectedDays1.value == 0
                                    ? null
                                    : controller.selectedDays1
                                        .value, // Get selected value
                                hint: const Text(
                                  "Select Days",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                items: [1, 2, 3, 7, 15, 30].map((int value) {
                                  return DropdownMenuItem<int>(
                                    value: value,
                                    child: Text(
                                      "$value days",
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  controller.updateSelectedDays1(
                                      newValue!); // Update value in controller
                                },
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // Third Container: Show Return Date
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: sW * 0.4,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white54)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Obx(() => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              DateFormat('yyyy-MM-dd')
                                  .format(controller.returnDate),
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            const Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                              size: 18,
                            )
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 69, 172, 204),
              ),
              width: sW,
              height: 40,
              child: const Center(
                  child: CText(text: "Search your Vroom Vroom", size: 15)),
            ),
          )
        ],
      ),
    );
  }

//   void _showDaySelectionDialog(BuildContext context) {
//   // Ensure the list of days is not null
//   List<int> daysList = [1, 2, 3, 7, 15, 30]; // List of available day options

//   Get.defaultDialog(
//     title: "Select Days",
//     content: Column(
//       children: List.generate(
//         daysList.length,
//         (index) {
//           int dayOption = daysList[index];
//           return ListTile(
//             title: Text('$dayOption days'),
//             onTap: () {
//               // Update the selected days in the controller
//               controller.updateSelectedDays1(dayOption.toString());
//               Get.back(); // Close the dialog after selection
//             },
//           );
//         },
//       ),
//     ),
//   );
// }
}
