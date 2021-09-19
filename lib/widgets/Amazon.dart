import 'package:flutter/material.dart';

import '../resourses/Strings.dart';
import '../theme/AppColors.dart';
import '../widgets/FlimCard.dart';
import '../modals/FlimInfo.dart';

class Amazon extends StatelessWidget {
  final List<FlimInfo> movieDetails = [
    FlimInfo(img: 'assets/images/strangers.png'),
    FlimInfo(img: 'assets/images/reasons.png'),
    FlimInfo(img: 'assets/images/strangers.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    Strings.latestOn,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors().white,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 9, 0, 0),
                    child: Image.asset(
                      'assets/images/amazon.png',
                    ),
                  )
                ],
              ),
              Text(
                Strings.viewAll,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: AppColors().lightishBlue,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: (movieDetails.map((data) {
              return FlimCard(item: data);
            })).toList()),
          ),
        ],
      ),
    );
  }
}
