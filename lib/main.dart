import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import './theme/AppColors.dart';
import './resourses/Strings.dart';
import './widgets/UserDetails.dart';
import './widgets/BalanceDetails.dart';
import './widgets/Promo.dart';
import './widgets/SocialMedia.dart';
import './widgets/RoamingPromo.dart';
import './widgets/Rewards.dart';
import './widgets/Offers.dart';
import './widgets/Button.dart';
import './widgets/NetflixSlide.dart';

void main() {
  runApp(MaterialApp(
    home: TaskApp(),
  ));
}

class TaskApp extends StatefulWidget {
  @override
  _TaskAppState createState() => _TaskAppState();
}

class _TaskAppState extends State<TaskApp> {
  int indexValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors().white,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Image.asset('assets/images/menuIcon.png'),
          );
        }),
        actions: <Widget>[
          Badge(
            badgeContent: Text('3'),
            position: BadgePosition.topEnd(top: 4, end: 3),
            child: IconButton(
              color: AppColors().black,
              onPressed: () {},
              iconSize: 33,
              icon: Icon(Icons.notifications_none_outlined),
            ),
          ),
          SizedBox(width: 20),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.png'),
            radius: 20,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: ListView(
        children: <Widget>[
          UserDetails(),
          BalanceDetails(),
          Promo(),
          SocialMedia(),
          RoamingPromo(),
          Rewards(),
          Offers(),
          Button(),
          NetflixSlide(),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
          currentIndex: indexValue,
          onTap: (index) => setState(() => indexValue = index),
          selectedItemColor: AppColors().warmBlueTwo,
          unselectedItemColor: AppColors().black,
          iconSize: 28,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.phone_android_outlined),
              label: 'Mobile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wine_bar_outlined),
              label: 'LifeStyle',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet_membership_outlined),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_vert_outlined),
              label: 'More',
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors().purple,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                    radius: 32,
                  ),
                  SizedBox(height: 10),
                  Opacity(
                    opacity: 0.64,
                    child: Text(
                      Strings.title,
                      style: TextStyle(
                        color: AppColors().white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    Strings.mobile_number,
                    style: TextStyle(
                      color: AppColors().white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            ListTile(
                title: Text(
                  Strings.aboutGlobe,
                  style: TextStyle(
                    color: AppColors().black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                title: Text(
                  Strings.payment,
                  style: TextStyle(
                    color: AppColors().black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
