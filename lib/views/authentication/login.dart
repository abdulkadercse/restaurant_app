import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/app_color.dart';
import '../../const/button_decoration.dart';
import '../../style/style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/logo_with_text_button.dart';
import '../Nav Bar Controller/nav_bar_controller.dart';
import 'enter_email.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String email = '';
  String password = '';

  Future<void> getData() async {
    final prefs = await SharedPreferences.getInstance();
    email = prefs.getString("email")!;
    password = prefs.getString("password")!;
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 36.h,
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
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: appTextFieldDecoration.copyWith(
                    hintText: "Enter your emaill address",
                ),
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
              TextField(
                controller: passwordController,
                obscureText: showPassword,
                keyboardType: TextInputType.visiblePassword,
                obscuringCharacter: "*",
                decoration: appTextFieldDecoration.copyWith(
                    hintText: 'Enter your password',
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        showPassword=!showPassword;
                      });
                    }, icon: showPassword==true? const Icon(Icons.visibility_off):const Icon(Icons.visibility))
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forget Password?",
                    style: welcomeSubTitleStyle.copyWith(
                      color: AppColor.mainColor,
                      fontWeight: FontWeight.w600,
                    ),
                  )).onTap(() => const EnterEmail().launch(context)),
              SizedBox(
                height: 18.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w, right: 41.w),
                child: Column(
                  children: [
                    CustomButton(
                        buttonText: 'Login',
                        buttonDecoration: buttonDecoration.copyWith(
                            color: AppColor.mainColor),
                        buttonTextColor: AppColor.primaryColor,
                        onPressed: () {
                          try{
                            if(emailController.text.isEmptyOrNull){
                              toast("Please Enter your email address");
                            }else if(passwordController.text.isEmptyOrNull){
                              toast("Please Enter your password");
                            }else if(passwordController.text.length<8){
                              toast("password must be at least 8 digit");
                            }else{
                              if (email == emailController.text && password == passwordController.text) {
                                EasyLoading.showSuccess('login Success!');
                                // const BottomNaviBar().launch(context);

                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const BottomNaviBar()),(route)=> false);
                              }else{
                                EasyLoading.showError("something went wrong please try again");
                              }
                            }


                          }catch(e){
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
                    )
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
