import 'package:e_mart/constants/asset_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: kToolbarHeight,
          ),
          const Text(
            "Welcome to E Mart",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text("Buy any item from using app"),
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
            height: 18.0,
          ),
          SizedBox(
            height: 45,
            width:ouble.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Login"),
            ),
          ),
        ],
      ),
    );
  }
}
