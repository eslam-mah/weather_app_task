part of 'weather_list.dart';

class WeatherListItem extends StatelessWidget {
  final Hour hour;
  const WeatherListItem({super.key, required this.hour});

  @override
  Widget build(BuildContext context) {
    ///
    /// formats the time to HH:MM
    ///
    String formattedTime(String? time) {
      if (time == null || time.isEmpty) return '';
      final dateTime = DateTime.parse(time);
      return DateFormat('hh:mm').format(dateTime);
    }

    ///
    /// returns the weather image based on the condition.
    ///
    String weatherImage(String condition) {
      switch (condition) {
        case 'Partly cloudy':
          return AssetsBox.clear;
        case 'Patchy rain nearby':
          return AssetsBox.rainy;
        case 'Light rain shower':
          return AssetsBox.rainy;
        case 'Sunny':
          return AssetsBox.clear;
        case 'Cloudy':
          return AssetsBox.cloudy;
        case 'Moderate rain at times':
          return AssetsBox.rainy;
        case 'Clear ':
          return AssetsBox.clear;
        case 'Mist':
          return AssetsBox.snow;
        case 'Overcast':
          return AssetsBox.cloudy;
        default:
          return AssetsBox.cloudy;
      }
    }

    return Container(
      width: 140.w,
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.r),
          topRight: Radius.circular(15.r),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// formatted time
          Text(
            formattedTime(hour.time),
            style: TextStyle(color: Colors.red, fontSize: 20.sp),
          ),

          /// temperature
          Text(
            hour.tempC.toString(),
            style: TextStyle(color: Colors.red, fontSize: 20.sp),
          ),

          /// weather image
          Image.asset(
            weatherImage(hour.condition?.text ?? ''),
            height: 50.w,
            width: 50.w,
          ),

          /// weather condition
          Text(
            hour.condition?.text ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.red, fontSize: 20.sp),
          ),
        ],
      ),
    );
  }
}
