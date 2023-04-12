import 'package:abaricom_mongodb_trial_1/constants/global_variables.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/images/abaricom_transparent.png',
                width: 120,
                height: 45,
              ),
            ),
          ],
          ),
         ),
        ),
      );
  }
}