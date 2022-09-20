import 'package:flutter/material.dart';
import 'package:triviaflutter/ui/pages/home/profile/rounded_score.dart';

import '../../../common/button.dart';
import '../../../common/user/profile_picture.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            width: 250,
            height: 250,
            child: Stack(
              children: const [
                Positioned(top: 25, left: 25, child: ProfilePicture(
                  asset: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
                  size: 200,
                )),
                Positioned(
                  top: 0,
                  right: 0,
                  child: RoundedScore(score: 25)
                )
              ],
            ),
          ),
          const Text(
            'Jhon Doe',
            style: TextStyle(
                fontSize: 20,
              fontWeight: FontWeight.w500
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Button(
                onPressed: () {

                },
                icon: Icons.logout,
                text: "Déconnexion"
            ),
          )
        ]),
      ),
    );
  }
}
