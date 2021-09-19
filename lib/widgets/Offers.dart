import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../resourses/Strings.dart';
import '../widgets/OfferCard.dart';
import '../modals/OfferInfo.dart';

class Offers extends StatelessWidget {
  final List<OfferInfo> offerDetails = [
    OfferInfo(
        titleImage: 'assets/images/aldo.png',
        points: '1000 Pts',
        offerDetail: 'P 500 OFF on Shoes',
        bgImage: 'assets/images/offerImage.png'),
    OfferInfo(
        titleImage: 'assets/images/raffles.png',
        points: '1000 Pts',
        offerDetail: 'Get Hair Spa & Styling',
        bgImage: 'assets/images/girl.png'),
    OfferInfo(
        titleImage: 'assets/images/aldo.png',
        points: '1000 Pts',
        offerDetail: 'P 500 OFF on Shoes',
        bgImage: 'assets/images/offerImage.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            Strings.offerTitle,
            style: TextStyle(
              fontSize: 15,
              color: AppColors().grey,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                  offerDetails.map((data) => OfferCard(item: data)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
