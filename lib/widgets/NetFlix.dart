import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../resourses/Strings.dart';
import '../modals/FlimInfo.dart';
import '../widgets/FlimCard.dart';

class NetFlix extends StatelessWidget {
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
                    Strings.popularOn,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors().white,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Image.asset('assets/images/netflix.png'),
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
