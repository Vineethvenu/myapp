import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/helpers/cache_helper/cacheHelper.dart';
import 'package:myapp/core/utils/shared/component/widgets/customToast.dart';
import 'package:myapp/features/login/model/loginModel.dart';
import 'package:myapp/features/login/repository/LoginRepository.dart';

class LoginController extends ChangeNotifier {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isLoading = false;
  bool passwordVisible = true;

  void toggle() {
    passwordVisible = !passwordVisible;
    notifyListeners();
  }

  final _api = LoginRepository();
  var loginModel = LoginModel();
  Future<void> userLoginApi() async {
    try {
      isLoading = true;
      notifyListeners();
      var data = {
        "email_phone": phone.text.trim(),
        "password": password.text.trim()
      };
      final response = await _api.loginApi(data);
      if (response != null && response['status'] == 200) {
        loginModel = LoginModel.fromJson(response['data']);
        notifyListeners();
        if (loginModel.success == 0) {
          CustomToast.showCustomErrorToast(
              message: "Login Failed : ${loginModel.message ?? ''}");
          notifyListeners();
        } else if (loginModel.success == 1) {
          CustomToast.showCustomToast(
              message: "Login Successful: ${loginModel.message ?? ''}");
          notifyListeners();
          if (loginModel.customerdata!.token != null &&
              loginModel.customerdata!.token!.isNotEmpty) {
            await CacheHelper.saveData(
                key: 'Usertoken',
                value: loginModel.customerdata!.token.toString());
          }
        }
      } else if (response != null && response['status'] == 400) {
        loginModel = LoginModel.fromJson(response['data']);
        CustomToast.showCustomToast(
            message: "Login failed: ${loginModel.message ?? ''}");
        notifyListeners();
      } else {
        CustomToast.showCustomErrorToast(message: "Unexpected error occurred");
        notifyListeners();
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error $e");
      }
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
