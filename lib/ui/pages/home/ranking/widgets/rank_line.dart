import 'package:flutter/material.dart';
import 'package:triviaflutter/ui/common/user/profile_picture.dart';
import 'package:triviaflutter/ui/pages/home/ranking/widgets/rank_rank.dart';

import '../../../../../common/models/user/user.dart';

class RankLine extends StatelessWidget {
  final User user;
  final int rank;

  const RankLine({Key? key, required this.user, required this.rank})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white30,
      child: ListTile(
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            RankRank(rank: rank),
            ProfilePicture(user: user, size: 40),
          ],
        ),
        title: Text(user.pseudo),
        subtitle: Text(user.score.toString()),
      ),
    );
  }
}
