import 'dart:math';

import 'package:flutter/material.dart';
import 'package:triviaflutter/ui/pages/home/ranking/rank_card.dart';

import '../../../../core/models/user.dart';

class RankingPage extends StatefulWidget {
  const RankingPage({Key? key}) : super(key: key);

  @override
  State<RankingPage> createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {

  var userRanking = List.generate(150,
        (i) {
      var fakeUser = fakeUsers[i % fakeUsers.length];

      return new User(
        fakeUser.firstname,
        fakeUser.lastname,
        fakeUser.profilePicture,
        pow(150 - i, 2).toInt(),
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: TextField(

            decoration: InputDecoration(
              icon: Icon(Icons.search),
              hintText: "Rechercher un utilisateur",
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: userRanking.length,
            itemBuilder: (context, index) {
              return RankCard(user: userRanking[index], rank: index);
            },
          ),
        ),
      ],
    );
  }
}
