// Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 20),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       // First Container: Select Start Date
//       GestureDetector(
//         onTap: () async {
//           DateTime? pickedDate = await showDatePicker(
//             context: context,
//             initialDate: controller.selectedDate1.value,
//             firstDate: DateTime.now(), // Prevent past dates from being selected
//             lastDate: DateTime(2100),
//           );
//           if (pickedDate != null) {
//             controller.updateSelectedDate1(pickedDate);
//           }
//         },
//         child: Container(
//           width: sW * 0.4,
//           height: 40,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(color: Colors.white54),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Obx(() => Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       DateFormat('yyyy-MM-dd')
//                           .format(controller.selectedDate1.value),
//                       style: const TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white,
//                       ),
//                     ),
//                     const Icon(
//                       Icons.calendar_today,
//                       color: Colors.white,
//                       size: 18,
//                     ),
//                   ],
//                 )),
//           ),
//         ),
//       ),
      
//       // Second Container: Select Days (Dropdown)
//       // Container(
//       //   width: sW * 0.4,
//       //   height: 40,
//       //   decoration: BoxDecoration(
//       //     borderRadius: BorderRadius.circular(10),
//       //     border: Border.all(color: Colors.white54),
//       //   ),
//       //   child: Padding(
//       //     padding: const EdgeInsets.all(8.0),
//       //     child: Obx(() => DropdownButtonHideUnderline(
//       //           child: DropdownButton<int>(
//       //             dropdownColor: const Color(0xFF003249), // Optional background color
//       //             icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
//       //             isExpanded: true,
//       //             value: controller.selectedDays1.value == 0
//       //                 ? null
//       //                 : controller.selectedDays1.value, // Get selected value
//       //             hint: const Text(
//       //               "Select Days",
//       //               style: TextStyle(
//       //                 fontSize: 15,
//       //                 fontWeight: FontWeight.w600,
//       //                 color: Colors.white,
//       //               ),
//       //             ),
//       //             items: [1, 2, 3, 7, 15, 30].map((int value) {
//       //               return DropdownMenuItem<int>(
//       //                 value: value,
//       //                 child: Text(
//       //                   "$value days",
//       //                   style: const TextStyle(color: Colors.white),
//       //                 ),
//       //               );
//       //             }).toList(),
//       //             onChanged: (newValue) {
//       //               controller.updateSelectedDays1(newValue!); // Update value in controller
//       //             },
//       //           ),
//       //         )),
//       //   ),
//       // ),
//     ],
//   ),
// )
