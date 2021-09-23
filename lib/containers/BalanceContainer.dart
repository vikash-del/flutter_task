import 'package:flutter/material.dart';

import '../services/BalanceService.dart';
import '../widgets/BalanceDetails.dart';

class BalanceContainer extends StatefulWidget {
  @override
  _BalanceContainerState createState() => _BalanceContainerState();
}

class _BalanceContainerState extends State<BalanceContainer> {
  var balanceDetails;
  @override
  void initState() {
    super.initState();
    balanceDetails = BalanceService.getBalanceInfo(context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: balanceDetails,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            return BalanceDetails(snapshot.data);
          }
          return Center(
            child: Text('Error!'),
          );
        });
  }
}
