import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../widgets/BalanceCard.dart';
import '../widgets/Suggestions.dart';

class BalanceDetails extends StatelessWidget {
  final balanceDetails;
  @override
  BalanceDetails(this.balanceDetails);
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
          color: AppColors().iceblue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Column(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              ...balanceDetails.map((data) => BalanceCard(item: data)).toList()
            ]),
          ),
          Suggestions(),
        ],
      ),
    );
  }
}
