import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../resourses/Strings.dart';
import '../modals/SuggestionInfo.dart';
import '../widgets/SuggestionCard.dart';

class Suggestions extends StatelessWidget {
  final List<SuggestionInfo> suggestData = [
    SuggestionInfo(code: 'GoUNLI350', validity: '30 days UNLI to Globe'),
    SuggestionInfo(code: 'GoUNLI180', validity: '15 days UNLI to Globe'),
    SuggestionInfo(code: 'GoUNLI430', validity: '10 days UNLI to Globe'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(27, 27, 0, 0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                Strings.recommended,
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors().greyishBrownThree,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  Strings.viewAll,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColors().lightishBlue,
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: (suggestData.map((data) {
              return SuggestionCard(item: data);
            })).toList()),
          ),
        ],
      ),
    );
  }
}
