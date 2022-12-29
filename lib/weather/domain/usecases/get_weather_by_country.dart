


import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repo.dart';

class GetWeatherByCountryName{
//هنا عشان الريبو نوعها abstract ومينفعش اخد منه اوبجكت واحنا محتاجين نستخدم الميثود
// الموجودة فيها اخدنا منه reference عشان باستخدامه نقدر نستخدم الميثود
    final BaseWeatherRepository repository;

    GetWeatherByCountryName(this.repository);

     Future<Weather> execute(String cityName) async{
       return await repository.getWeatherByCityName(cityName);
     }
}