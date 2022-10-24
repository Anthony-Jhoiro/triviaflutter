import 'package:flutter/material.dart';
import 'package:triviaflutter/common/models/user/fake_user.dart';
import 'package:triviaflutter/ui/pages/home/profile/rounded_score.dart';

import '../../../../common/models/user/user.dart';
import '../../../common/button.dart';
import '../../../common/user/profile_picture.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  User user = fakeUsers[0];

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
                    asset: user.avatar,
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
            user.pseudo,
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
