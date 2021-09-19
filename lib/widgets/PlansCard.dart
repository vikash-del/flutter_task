import 'package:flutter/material.dart';

import '../theme/AppColors.dart';

class PlansCard extends StatelessWidget {
  final String title;
  final String cardHead;
  final String cardTitle;
  final String cardSubtitle;
  final String cardLink;
  final String bgImage;

  PlansCard(this.title, this.cardHead, this.cardTitle, this.cardSubtitle,
      this.cardLink, this.bgImage);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
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
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors().white,
              ),
            ),
          ),
          SizedBox(height: 12),
          Card(
            elevation: 0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(bgImage),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter),
              ),
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    cardHead,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors().white,
                    ),
                  ),
                  SizedBox(height: 8),
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [
                        AppColors().white,
                        AppColors().whiteShade,
                      ],
                      tileMode: TileMode.clamp,
                    ).createShader(bounds),
                    child: Text(
                      cardTitle,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: AppColors().white,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    cardSubtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors().white,
                    ),
                  ),
                  SizedBox(height: 31),
                  Row(
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          cardLink,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors().white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: AppColors().white,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
