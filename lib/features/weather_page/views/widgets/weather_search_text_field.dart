import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchWeatherTextField extends StatelessWidget {
  final Function(String)? onSubmitted;

  ///
  ///  A widget that represents a text field for searching weather.
  ///
  ///  parameters:
  /// - onSubmitted: The function to be called when the user submits the search.
  ///
  const SearchWeatherTextField({super.key, this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),

      ///  a text field for searching weather
      child: TextField(
        onSubmitted: onSubmitted,

        /// a decoration for the text field
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(15.r),
          ),

          /// a label for the text field
          labelText: 'City name',
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(15.r),
          ),

          /// a hint text for the text field
          hintText: 'Search by city name',
          prefixIcon: Icon(Icons.apartment, color: Colors.green, size: 30.r),
        ),
      ),
    );
  }
}
