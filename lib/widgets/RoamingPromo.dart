import 'package:flutter/material.dart';

import '../resourses/Strings.dart';
import './PlansCard.dart';

class RoamingPromo extends StatelessWidget {
  final String roamHead = Strings.roamPlans;
  final String cardHead = Strings.goSakto;
  final String cardTitle = Strings.trip;
  final String cardSubTitle = Strings.roamSubtitle;
  final String cardButton = Strings.roamLink;
  final String bgImage = 'assets/images/roamingImage.png';
  @override
  Widget build(BuildContext context) {
    return PlansCard(
        roamHead, cardHead, cardTitle, cardSubTitle, cardButton, bgImage);
  }
}
