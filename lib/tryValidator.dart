import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'core/utils/app-assets.dart';

class validator extends StatefulWidget {
  const validator({super.key});

  @override
  State<validator> createState() => _validatorState();
}

class _validatorState extends State<validator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: 'hanafy',
            ),
          ),
          SvgPicture.asset(AppAssets.loginImage),
        ],
      ),
    );
  }
}
