



 import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/weather/data/models/weather_model.dart';

abstract class BaseRemoteDataSource{

   Future<WeatherModel?> getWeatherByCountryName(String countryName);

  }

  class RemoteDataSource implements BaseRemoteDataSource{
  @override

  Future<WeatherModel?>  getWeatherByCountryName(String countryName) async {
    try {
      var response = await Dio().get('${AppConstants.baseUrl}/weather?q=$countryName&${AppConstants.appKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }

  }

  }