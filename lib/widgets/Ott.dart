import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../resourses/Strings.dart';
import '../modals/OttInfo.dart';
import '../widgets/OttCard.dart';

class Ott extends StatelessWidget {
  final List<OttInfo> ottDetails = [
    OttInfo(
        headImage: 'assets/images/hq.png',
        subscribe: 'Subscribe for',
        amount: 'P 129.00/m',
        bgcolor: AppColors().grapePurple),
    OttInfo(
        headImage: 'assets/images/iflix.png',
        subscribe: 'Subscribe for',
        amount: 'P 129.00/m',
        bgcolor: AppColors().redBrown),
    OttInfo(
        headImage: 'assets/images/hq.png',
        subscribe: 'Subscribe for',
        amount: 'P 129.00/m',
        bgcolor: AppColors().lightishBlue),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            Strings.youMight,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors().white,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: (ottDetails.map((data) {
              return OttCard(item: data);
            })).toList()),
          ),
        ],
      ),
    );
  }
}
