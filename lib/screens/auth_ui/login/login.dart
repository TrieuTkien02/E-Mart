import 'package:e_mart/constants/asset_images.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: kToolbarHeight,
          ),
          Text("Welcomeee"),
          SizedBox(
            height: 12,
          ),
          Text("Buy any item from using app"),
          Center(child: Image.asset(AssetsImages.instance.welcomeImage)),
        ],
      ),
    ));
  }
}
