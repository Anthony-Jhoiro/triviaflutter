import 'package:flutter/material.dart';
import 'package:triviaflutter/ui/common/user/profile_picture.dart';
import 'package:triviaflutter/ui/pages/home/ranking/rank_rank.dart';
import 'package:triviaflutter/ui/pages/home/ranking/rank_scrore.dart';

import '../../../../common/models/user/user.dart';

class RankCard extends StatelessWidget {
  final User user;
  final int rank;

  const RankCard({Key? key, required this.user, required this.rank})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RankRank(rank: rank),
            Expanded(
              child: Row(
                children: [
                  ProfilePicture(asset: user.avatar, size: 40),
                  SizedBox(
                    width: 8,
                  ),
                  Text(user.pseudo),
                ],
              ),
            ),
            RankScore(score: user.score),
          ],
        ),
      ),
    );
  }
}
