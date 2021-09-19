import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../resourses/Strings.dart';
import '../modals/SocialMediaInfo.dart';
import '../widgets/SocialMediaCard.dart';

class SocialMedia extends StatelessWidget {
  final List<SocialMediaInfo> mediaDetails = [
    SocialMediaInfo(
      icon: 'assets/images/spotify.png',
      mediaName: 'Spotify Premium',
      subTitle: 'Subscribe for',
      amount: 'P 129.00',
      bgImage: 'assets/images/spotifybg.png',
    ),
    SocialMediaInfo(
      icon: 'assets/images/facebook.png',
      mediaName: 'Facebook Surf',
      subTitle: 'Get pack for',
      amount: 'P 50.00',
      bgImage: 'assets/images/facebookbg.png',
    ),
    SocialMediaInfo(
      icon: 'assets/images/insta.png',
      mediaName: 'Insta Surf',
      subTitle: 'Subscribe for',
      amount: 'P 129.00',
      bgImage: 'assets/images/spotifybg.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(24, 20, 0, 12),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Strings.latestPromo,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors().white,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  Strings.viewAll,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: AppColors().lightishBlue,
                  ),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: (mediaDetails.map((data) {
              return SocialMediaCard(item: data);
            })).toList()),
          ),
        ],
      ),
    );
  }
}
