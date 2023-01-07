import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triviaflutter/common/repository/user_repository.dart';
import 'package:triviaflutter/ui/pages/home/ranking/bloc/ranking_cubit.dart';

typedef RankingCubitProviderBuilder = Widget Function(
  RankingCubit cubit,
  BuildContext context,
  RankingState state,
);

class RankingCubitProvider extends StatefulWidget {
  final RankingCubitProviderBuilder builder;
  final BlocWidgetListener<RankingState> listener;

  const RankingCubitProvider({
    Key? key,
    required this.builder,
    required this.listener,
  }) : super(key: key);

  @override
  State<RankingCubitProvider> createState() => _RankingCubitProviderState();
}

class _RankingCubitProviderState extends State<RankingCubitProvider> {
  RankingCubit? rankingCubit;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<UserRepository>(
      create: (_) => UserRepository.getInstance(),
      child: BlocProvider<RankingCubit>(
        create: (cubitBuildContext) {
          rankingCubit = RankingCubit(
            userRepository:
                RepositoryProvider.of<UserRepository>(cubitBuildContext),
          );

          return rankingCubit!..loadUsers("");
        },
        child: BlocConsumer<RankingCubit, RankingState>(
          builder: (context, state) =>
              widget.builder(rankingCubit!, context, state),
          listener: widget.listener,
        ),
      ),
    );

    //   return RepositoryProvider<UserRepository>(
    //       create: (_) => UserRepository.getInstance(),
    //       child: BlocProvider<RankingCubit>(
    //       create: (context)
    //   {
    //     rankingCubit = RankingCubit(
    //       userRepository: RepositoryProvider.of<UserRepository>(context),
    //     );
    //
    //     return rankingCubit!
    //       ..loadUsers();
    //   },
    //   child: BlocConsumer<RankingCubit, RankingState>(
    //
    //   ),
    //
    // ,}
  }
}
