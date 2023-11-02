import 'package:translater/data/models/universal_data.dart';
import 'package:translater/service/api_service.dart';

class ApiRepository {
  final ApiService apiService;

  ApiRepository({required this.apiService});

  Future<UniversalData> getTranslation(String sl, String dl, String text) =>
      apiService.getTranslation(sl: sl, dl: dl, text: text);
}
