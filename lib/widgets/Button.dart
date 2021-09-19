import 'package:first_app/resourses/Strings.dart';
import 'package:flutter/material.dart';

import '../theme/AppColors.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
      child: ElevatedButton(
        child: Text(Strings.buttonText),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: 18,
          ),
          onPrimary: AppColors().black,
          primary: AppColors().white,
          textStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          side: BorderSide(color: AppColors().black, width: 1),
          elevation: 0,
        ),
      ),
    );
  }
}
