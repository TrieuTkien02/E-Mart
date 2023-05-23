import 'package:e_mart/constants/asset_images.dart';
import 'package:e_mart/screens/auth_ui/login.dart';
import 'package:e_mart/screens/auth_ui/sign_up.dart';
import 'package:e_mart/widgets/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/routes.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: kToolbarHeight,
          ),
          const Text(
            "Chào mừng đến với E-Mart",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Mua bất cứ thứ gì khi dùng E-Mart",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          Center(
              child: Image.asset(
            AssetsImages.instance.AppLogo,
            alignment: Alignment.center,
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: const Icon(
                  Icons.facebook,
                  size: 35,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                width: 12.0,
              ),
              CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: Image.asset(
                  AssetsImages.instance.googleLogo,
                  scale: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          PrimaryButton(
            title: "Đăng nhập",
            onPressed: () {
              Routes.instance.push(widget: const Login(), context: context);
            },
          ),
          const SizedBox(
            height: 18.0,
          ),
          PrimaryButton(
            title: "Đăng ký",
            onPressed: () {
              Routes.instance.push(widget: const SignUp(), context: context);
            },
          ),
        ],
      ),
    );
  }
}
