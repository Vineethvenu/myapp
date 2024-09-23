import 'package:myapp/core/network/api_endpoints.dart';
import 'package:myapp/core/network/network_api_services.dart';

class LoginRepository {
  final _apiService = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = await _apiService.postApi(
        data, ApiEndPoints.baseURL + ApiEndPoints.login);
    return response;
  }
}