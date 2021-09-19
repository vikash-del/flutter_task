import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../modals/SuggestionInfo.dart';

class SuggestionCard extends StatelessWidget {
  final SuggestionInfo item;
  SuggestionCard({required this.item});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: AppColors().lightishBlue,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                item.code,
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w600,
                  color: AppColors().white,
                ),
              ),
              Text(
                item.validity,
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors().white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
