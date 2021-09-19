import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../widgets/BalanceCard.dart';
import '../modals/BalanceInfo.dart';
import '../widgets/Suggestions.dart';

class BalanceDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<BalanceInfo> details = [
      BalanceInfo(
        icon: 'assets/images/cardIcon.png',
        balanceType: 'Load Balance',
        balance: 'P 1675.00',
        validity: 'Valid till 26 Dec',
      ),
      BalanceInfo(
        icon: 'assets/images/playIcon.png',
        balanceType: 'Data Balance',
        balance: '300 MB',
        validity: 'of 12 GB',
      ),
      BalanceInfo(
        icon: 'assets/images/playIcon.png',
        balanceType: 'Wallet Balance',
        balance: '100.00',
        validity: 'Valid till 2022',
      ),
    ];
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
            child: Row(
                children: (details.map((data) {
              return BalanceCard(item: data);
            })).toList()),
          ),
          Suggestions(),
        ],
      ),
    );
  }
}
