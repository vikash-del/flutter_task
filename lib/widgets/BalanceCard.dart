import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../modals/BalanceInfo.dart';

class BalanceCard extends StatelessWidget {
  final BalanceInfo item;
  BalanceCard({required this.item});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 32, 0, 0),
      width: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(item.icon),
                radius: 16,
              ),
              SizedBox(height: 24),
              Text(
                item.balanceType,
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors().greyishBrowntwo,
                ),
              ),
              SizedBox(height: 4),
              Text(
                item.balance,
                style: TextStyle(
                  fontSize: 22,
                  color: AppColors().black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 30),
              Text(
                item.validity,
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors().blackTwo,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
