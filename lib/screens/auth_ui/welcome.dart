import 'package:e_mart/constants/asset_images.dart';
import 'package:e_mart/screens/auth_ui/login.dart';
import 'package:e_mart/screens/auth_ui/sign_up.dart';
import 'package:e_mart/widgets/primary_button.dart';
import 'package:e_mart/widgets/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/routes.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TopTitles(
              subtitle: "Buy AnyItems From Using App",
              title: "Welcome to E-Mart"),
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
            title: "Login",
            onPressed: () {
              Routes.instance.push(widget: const Login(), context: context);
            },
          ),
          const SizedBox(
            height: 18.0,
          ),
          PrimaryButton(
            title: "Sign Up",
            onPressed: () {
              Routes.instance.push(widget: const SignUp(), context: context);
            },
          ),
        ],
      ),
    );
  }
}
