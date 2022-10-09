import 'package:flutter/material.dart';
import 'package:triviaflutter/core/models/user.dart';
import 'package:triviaflutter/ui/pages/home/profile/rounded_score.dart';

import '../../../common/button.dart';
import '../../../common/user/profile_picture.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  User user = new User(
    "John",
    "Doe",
    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80",
    25,
  );

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
              children: [
                Positioned(
                  top: 25,
                  left: 25,
                  child: ProfilePicture(
                    asset: user.profilePicture,
                    size: 200,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: RoundedScore(
                    score: user.score,
                  ),
                ),
              ],
            ),
          ),
          Text(
            user.firstname + " " + user.lastname,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Button(
              onPressed: () {},
              icon: Icons.logout,
              text: "Déconnexion",
            ),
          ),
        ]),
      ),
    );
  }
}
