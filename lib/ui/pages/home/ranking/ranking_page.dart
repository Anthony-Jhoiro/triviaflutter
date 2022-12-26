import 'dart:math';

import 'package:flutter/material.dart';
import 'package:triviaflutter/ui/pages/home/ranking/bloc/ranking_cubit.dart';
import 'package:triviaflutter/ui/pages/home/ranking/widgets/rank_line.dart';
import 'package:triviaflutter/ui/pages/home/ranking/widgets/ranking_cubit_provider.dart';

import '../../../../common/models/user/fake_user.dart';
import '../../../../common/models/user/user.dart';

class RankingPage extends StatefulWidget {
  const RankingPage({Key? key}) : super(key: key);

  @override
  State<RankingPage> createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {

  var userRanking = List.generate(
    150,
    (i) {
      var fakeUser = fakeUsers[i % fakeUsers.length];

      return new User(
        id: fakeUser.id,
        pseudo: fakeUser.pseudo,
        avatar: fakeUser.avatar,
        score: pow(150 - i, 2).toInt(),
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return RankingCubitProvider(
      listener: (BuildContext context, RankingState state) {
        return;
      },
      builder: (context, state) {
        if (state is UserLoaded) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: "Rechercher un utilisateur",
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: state.users.length,
                  itemBuilder: (context, index) {
                    return RankLine(user: state.users[index], rank: index);
                  },
                ),
              ),
            ],
          );
        }

        return CircularProgressIndicator();

      },
    );
  }
}
