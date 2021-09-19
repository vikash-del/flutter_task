import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../modals/OttInfo.dart';

class OttCard extends StatelessWidget {
  final OttInfo item;
  OttCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors().black,
      ),
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: 145,
          height: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: item.bgcolor,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(22, 15, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  item.headImage,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  item.subscribe,
                  style: TextStyle(
                    color: AppColors().white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  item.amount,
                  style: TextStyle(
                    color: AppColors().white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
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
