import 'package:flutter/material.dart';

import '../resourses/Strings.dart';
import './PlansCard.dart';

class Promo extends StatelessWidget {
  final String promoHead = Strings.promoHead;
  final String cardHead = Strings.goSakto;
  final String cardTitle = Strings.promoTitle;
  final String cardSubTitle = Strings.promoSubTitle;
  final String cardButton = Strings.promoLink;
  final String bgImage = 'assets/images/promoImage.png';
  @override
  Widget build(BuildContext context) {
    return PlansCard(
        promoHead, cardHead, cardTitle, cardSubTitle, cardButton, bgImage);
  }
}
