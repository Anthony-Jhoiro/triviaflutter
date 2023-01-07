import 'package:flutter/material.dart';
import 'package:triviaflutter/ui/pages/home/ranking/bloc/ranking_cubit.dart';
import 'package:triviaflutter/ui/pages/home/ranking/widgets/rank_line.dart';
import 'package:triviaflutter/ui/pages/home/ranking/widgets/ranking_cubit_provider.dart';

class RankingPage extends StatelessWidget {
  const RankingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RankingCubitProvider(
      listener: (BuildContext _context, RankingState _state) {
        return;
      },
      builder: (cubit, context, state) {
        if (state is UserLoaded) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  onChanged: (filterQuery) => cubit.filterUsers(filterQuery),
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
                    return RankLine(
                        user: state.users[index],
                        rank: state.users[index].rank);
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
