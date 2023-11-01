import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:translater/data/models/universal_data.dart';
import 'package:translater/utils/constants.dart';

class ApiService {
  // DIO SETTINGS

  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {"Content-Type": "application/json"},
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    ),
  );

  ApiService() {
    _init();
  }

  _init() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) async {
          debugPrint("ON ERROR:${error.message} and ${error.response}");
          return handler.next(error);
        },
        onRequest: (requestOptions, handler) async {
          debugPrint("ON REQUEST :${handler.isCompleted}");
          return handler.next(requestOptions);
        },
        onResponse: (response, handler) async {
          debugPrint("ON RESPONSE :${handler.isCompleted}");
          return handler.next(response);
        },
      ),
    );
  }

  Future<UniversalData> getTranslation({
    required String sl,
    required String dl,
    required String text,
  }) async {
    Response response;
    try {
      response = await dio.get('/translate?sl=$sl&dl=$dl&text=$text/');

      if (response.statusCode == 200) {
        return UniversalData(data: response.data);
      }
      return UniversalData(error: "Other Error");
    } on DioException catch (e) {
      if (e.response != null) {
        return UniversalData(error: e.response!.data);
      } else {
        return UniversalData(error: e.message!);
      }
    } catch (error) {
      return UniversalData(error: error.toString());
    }
  }
}
