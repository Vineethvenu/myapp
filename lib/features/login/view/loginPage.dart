import 'package:flutter/material.dart';
import 'package:myapp/core/utils/configs/styles/colors.dart';
import 'package:myapp/core/utils/shared/component/widgets/customToast.dart';
import 'package:myapp/features/login/controller/loginController.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    final loginController = Provider.of<LoginController>(context);
    return Scaffold(
      body: Container(
        color: AppColor.whiteTxt,
        height: h,
        width: w,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40 / h * h,
              width: double.infinity,
              child: _customTextField(
                labelTxt: "Phone Number",
                hintTxt: "Enter phone number",
                controller: loginController.phone,
                keyboardType: TextInputType.number,
                labelTxtStyle: const TextStyle(
                  fontSize: 12,
                  fontFamily: "poppinsRegular",
                  color: Colors.black,
                ),
                hintTxtStyle: const TextStyle(
                  fontSize: 12,
                  fontFamily: "poppinsRegular",
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 5 / h * h,
            ),
            SizedBox(
              height: 40 / h * h,
              width: double.infinity,
              child: _customTextField(
                labelTxt: "Password",
                hintTxt: "Enter password",
                controller: loginController.password,
                keyboardType: TextInputType.name,
                labelTxtStyle: const TextStyle(
                  fontSize: 12,
                  color: AppColor.txtColor,
                ),
                hintTxtStyle: const TextStyle(
                  fontSize: 12,
                  color: AppColor.txtColor,
                ),
                obscureText: loginController.passwordVisible,
                suffixIcon: IconButton(
                  icon: Icon(
                    loginController.passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: loginController.toggle,
                ),
              ),
            ),
            SizedBox(
              height: 50 / h * h,
            ),
            _customBtn(
                width: double.infinity,
                height: 35 / h * h,
                child: loginController.isLoading
                    ? const Center(
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ),
                      )
                    : const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "poppinsSemiBold",
                          ),
                        ),
                      ),
                onPressed: () {
                  print("AAAAAAAAAAAAAAAAAA");
                  if (loginController.phone.text.isEmpty) {
                    CustomToast.showCustomErrorToast(
                        message: "Phone number should not be empty");
                  } else if (loginController.password.text.isEmpty) {
                    CustomToast.showCustomErrorToast(
                        message: "Password should not be empty");
                  } else {
                    loginController.userLoginApi().then((value) {
                      if (loginController.loginModel.success == 200) {
                        Navigator.pushNamed(context, '/dashBoardHome');
                      }
                      CustomToast.showCustomErrorToast(
                          message:
                              "Token ${loginController.loginModel.customerdata!.token ?? "no token found!"}");
                    });
                  }
                }),
          ],
        ),
      ),
    );
  }

  Widget _customTextField({
    required String labelTxt,
    required String hintTxt,
    required TextEditingController? controller,
    required TextInputType? keyboardType,
    required TextStyle? labelTxtStyle,
    required TextStyle? hintTxtStyle,
    String? Function(String?)? validator,
    bool obscureText = false,
    IconButton? suffixIcon,
    bool readOnly = false,
  }) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      validator: validator,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: const Color(0xfff5f5f5),
        suffixIcon: suffixIcon,
        hintText: hintTxt,
        hintStyle: hintTxtStyle,
        contentPadding: const EdgeInsets.all(12),
        labelText: labelTxt,
        labelStyle: labelTxtStyle,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(color: AppColor.borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(color: AppColor.borderColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(color: AppColor.errorBorder),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  Widget _customBtn({
    required double width,
    required double height,
    required Widget child,
    required Function() onPressed,
  }) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(30),
      elevation: 2,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onPressed,
        splashColor: Colors.black.withOpacity(0.3),
        child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColor.btnColor,
            ),
            child: child),
      ),
    );
  }
}
