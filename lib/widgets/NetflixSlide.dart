import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../resourses/Strings.dart';
import '../widgets/NetFlix.dart';
import '../widgets/Amazon.dart';
import '../widgets/Ott.dart';

class NetflixSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 36),
      padding: EdgeInsets.fromLTRB(20, 40, 10, 32),
      decoration: BoxDecoration(
        color: AppColors().black,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            Strings.subscription,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors().white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [
                AppColors().paleSalmon,
                AppColors().cornflower,
              ],
              tileMode: TileMode.clamp,
            ).createShader(bounds),
            child: SizedBox(
              width: 250,
              child: Text(
                Strings.subData,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors().white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          NetFlix(),
          SizedBox(
            height: 32,
          ),
          Amazon(),
          SizedBox(
            height: 30.3,
          ),
          Ott(),
        ],
      ),
    );
  }
}
