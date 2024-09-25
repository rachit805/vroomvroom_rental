import 'package:get/get.dart';
import 'package:intl/intl.dart'; // For formatting the date

class BookingMenuController extends GetxController {
  var selectedHour = "Select Hours".obs; // Observable for selected hour
  var selectedDate = DateFormat('yyyy-MM-dd')
      .format(DateTime.now())
      .obs; // Observable for the current date

  // Method to update the selected date
  void updateSelectedDate(DateTime newDate) {
    selectedDate.value =
        DateFormat('yyyy-MM-dd').format(newDate); // Update the selected date
  }

  // Method to update the selected hour
  void updateSelectedHour(String hour) {
    selectedHour.value = hour;
  }

  /////////////////////////
  ///
  ///
  Rx<DateTime> selectedDate1 = DateTime.now().obs;
  RxInt selectedDays1 = 1.obs; // Default selected days is 1

  // This method calculates the return date based on selected days
  DateTime get returnDate =>
      selectedDate1.value.add(Duration(days: selectedDays1.value));

  // Method to update the selected date
  void updateSelectedDate1(DateTime newDate) {
    selectedDate1.value = newDate;
  }

  // Method to update the selected days
  void updateSelectedDays1(int days) {
    selectedDays1.value = days;
  }
}
