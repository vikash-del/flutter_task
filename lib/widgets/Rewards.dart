import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../resourses/Strings.dart';

class Rewards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [
                AppColors().sapphire,
                AppColors().lavenderPink,
              ],
              tileMode: TileMode.clamp,
            ).createShader(bounds),
            child: Text(
              Strings.globe,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors().white,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Card(
            elevation: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors().mango,
                    AppColors().tangerine,
                  ],
                  tileMode: TileMode.clamp,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        Strings.points,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: AppColors().white,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          Strings.pointDigit,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors().white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset('assets/images/gift.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
