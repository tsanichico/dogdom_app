import 'package:dogdom_app/ui/screens/home_screen.dart';
import 'package:dogdom_app/utils/app_color.dart';
import 'package:dogdom_app/utils/app_typography.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg_loginpage.png',
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 157),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo2.png',
                      width: 180,
                      height: 66,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 22,
                        left: 22,
                      ),
                      child: TextFormField(
                        initialValue: '   +62',
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColor.grey5,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: MediaQuery.of(context).size.width - (2 * 24),
                        height: 58,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.primary,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Get Captcha',
                            style: AppTypography.heading6.copyWith(
                              color: AppColor.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 22,
                        ),
                        child: Text(
                          'Password to Login',
                          style: AppTypography.Body3.copyWith(
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 22,
                    right: 22,
                    bottom: 50,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'By signing in, you agree to the User Agreement and Privacy Terms.',
                        style: AppTypography.Body3.copyWith(
                          color: AppColor.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
