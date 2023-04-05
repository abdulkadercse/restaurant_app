import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/style/style.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../const/app_color.dart';
import '../../const/button_decoration.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/logo_with_text_button.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25.h,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Full Name",
                        style: welcomeTitleStyle.copyWith(
                            fontSize: 14.sp,
                            color: const Color(0xff374151),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      TextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        decoration: appTextFieldDecoration.copyWith(
                          hintText: "Enter your full name",
                        ),
                        validator: (name) {
                          if (name!.isEmpty ||
                              !RegExp(r'^[a-z A-Z,.\-]+$').hasMatch(name!)) {
                            return 'Please enter your correct name';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        "Email Address",
                        style: welcomeTitleStyle.copyWith(
                          fontSize: 14.sp,
                          color: const Color(0xff374151),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: appTextFieldDecoration.copyWith(
                          hintText: "Enter your emaill address",
                        ),
                        validator: (email) {
                          if (email!.isEmpty ||
                              !RegExp(r'^.+@[a-z A-Z]+\.{1}[a-z A-Z]+(\.{0,1}[a-z A-Z]+)$').hasMatch(email!)) {
                            return 'Please enter your correct email address';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        "Password",
                        style: welcomeTitleStyle.copyWith(
                          fontSize: 14.sp,
                          color: const Color(0xff374151),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: showPassword,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: appTextFieldDecoration.copyWith(
                          hintText: "Enter your password",
                          suffixIcon: IconButton(onPressed: (){
                           setState(() {
                             showPassword=!showPassword;
                           });
                          }, icon: showPassword==true? const Icon(Icons.visibility_off):const Icon(Icons.visibility))
                        ),
                        validator: (password) {
                          if (password!.isEmpty ||
                              !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(password!)) {
                            return 'Password should contain upper,lower,digit and Special character';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ],
                  )),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w, right: 41.w),
                child: Column(
                  children: [
                    CustomButton(
                        buttonText: 'Registration',
                        buttonDecoration: buttonDecoration.copyWith(
                          color: AppColor.mainColor,
                        ),
                        buttonTextColor: AppColor.primaryColor,
                        onPressed: () async {
                          try {
                            if (_formKey.currentState!.validate()) {
                              final prefs = await SharedPreferences.getInstance();
                              prefs.setString("name", nameController.text);
                              prefs.setString("email", emailController.text);
                              prefs.setString("password", passwordController.text);
                              EasyLoading.showSuccess('Registration Success!');

                            }
                          } catch (e) {
                            EasyLoading.showError(e.toString());
                          }
                        }),
                    SizedBox(
                      height: 24.h,
                    ),
                    LogoWithText(
                      buttonText: 'Login With Google',
                      buttonDecoration: buttonDecoration.copyWith(
                          color: const Color(0xffF4F4F4)),
                      buttonTextColor: const Color(0xff222222),
                      onPressed: () {},
                      images: 'assets/google.png',
                    ),

                    SizedBox(height: 20.h,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
