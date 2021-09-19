import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../modals/OfferInfo.dart';

class OfferCard extends StatelessWidget {
  final OfferInfo item;
  OfferCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: Card(
        elevation: 0,
        child: Container(
          height: 168,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(item.bgImage),
            fit: BoxFit.fill,
          )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 45, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  item.titleImage,
                  width: 64,
                  height: 28,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  item.points,
                  style: TextStyle(
                    color: AppColors().white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  item.offerDetail,
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
