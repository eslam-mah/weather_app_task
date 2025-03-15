import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app_task/features/weather_page/views/view/weather_page.dart';
import 'package:weather_app_task/features/weather_page/views/widgets/weather_search_text_field.dart';

class SearchPage extends StatefulWidget {
  /// this page is used to search weather data by city name.
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  /// used to control the visibility of the search bar
  bool searchBarOpened = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// App bar title
        title: Text(
          'Weather App',
          style: TextStyle(color: Colors.green, fontSize: 25.sp),
        ),
        centerTitle: true,
        actions: [
          /// Search button
          IconButton(
            icon: Icon(Icons.search, color: Colors.green, size: 30.r),
            onPressed: () {
              setState(() {
                searchBarOpened = !searchBarOpened;
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: searchBarOpened,

              /// Search weather text field
              child: SearchWeatherTextField(
                onSubmitted: (value) {
                  GoRouter.of(
                    context,
                  ).push(WeatherPage.routeName, extra: value);
                },
              ),
            ),

            /// no weather data text
            Text(
              'There is no weather data, try searching by city name',
              style: TextStyle(color: Colors.red, fontSize: 25.sp),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
