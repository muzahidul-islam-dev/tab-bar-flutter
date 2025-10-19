import 'package:tab_bar/Fragment/ContactFragments.dart';
import 'package:tab_bar/Fragment/EmailFragment.dart';
import 'package:tab_bar/Fragment/HomeFragment.dart';
import 'package:tab_bar/Fragment/PersonFragment.dart';
import 'package:tab_bar/Fragment/PhoneFragment.dart';
import 'package:tab_bar/Fragment/SearchFragment.dart';
import 'package:tab_bar/Fragment/SettingsFragment.dart';

import './Fragment/AccountBalanceFragment.dart';
import 'package:flutter/material.dart';
import 'package:tab_bar/Fragment/AccountBalanceFragment.dart';

void main(){
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget{
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      title: 'Rahat Hossain',
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Rahat Hossain',style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home',),
              Tab(icon: Icon(Icons.search), text: 'Search',),
              Tab(icon: Icon(Icons.settings), text: 'Settings',),
              Tab(icon: Icon(Icons.email), text: 'Email',),
              Tab(icon: Icon(Icons.contact_mail), text: 'Contact Mail',),
              Tab(icon: Icon(Icons.person), text: 'Person',),
              Tab(icon: Icon(Icons.phone), text: 'Phone',),
              Tab(icon: Icon(Icons.account_balance), text: 'Account Balance',),
            ],
            isScrollable: true,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            HomeFragment(),
            SearchFragment(),
            SettingsFragment(),
            EmailFragment(),
            ContactFragment(),
            PersonFragment(),
            PhoneFragment(),
            AccountBalanceFragment(),
          ],
        ),
      ),
    );
  }
}


// class FacebookTopNav extends StatelessWidget {
//   const FacebookTopNav({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//       color: Colors.white,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           // Left side (Facebook Logo)
//           const Text(
//             'facebook',
//             style: TextStyle(
//               color: Colors.blue,
//               fontSize: 26,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//
//           // Middle icons (Home, Friends, Watch, Marketplace)
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               Icon(Icons.home, color: Colors.blue),
//               SizedBox(width: 20),
//               Icon(Icons.group_outlined, color: Colors.grey),
//               SizedBox(width: 20),
//               Icon(Icons.ondemand_video, color: Colors.grey),
//               SizedBox(width: 20),
//               Icon(Icons.storefront_outlined, color: Colors.grey),
//             ],
//           ),
//
//           // Right side icons (Search, Messenger)
//           Row(
//             children: [
//               CircleAvatar(
//                 backgroundColor: Colors.grey.shade200,
//                 child: const Icon(Icons.search, color: Colors.black),
//               ),
//               const SizedBox(width: 8),
//               CircleAvatar(
//                 backgroundColor: Colors.grey.shade200,
//                 child: const FaIcon(FontAwesomeIcons.facebookMessenger, color: Colors.black, size: 18),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }