import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../modals/SocialMediaInfo.dart';

class SocialMediaCard extends StatelessWidget {
  final SocialMediaInfo item;
  SocialMediaCard({required this.item});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Card(
        elevation: 0,
        child: Container(
          width: 150,
          height: 170,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(item.bgImage), fit: BoxFit.fill),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  item.icon,
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  item.mediaName,
                  style: TextStyle(
                    color: AppColors().white,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  item.subTitle,
                  style: TextStyle(
                    color: AppColors().white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  item.amount,
                  style: TextStyle(
                    color: AppColors().white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
