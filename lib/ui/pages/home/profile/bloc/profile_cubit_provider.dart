import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triviaflutter/common/repository/current_user_repository.dart';
import 'package:triviaflutter/ui/pages/home/profile/bloc/profile_cubit.dart';

typedef ProfileCubitProviderBuilder = Widget Function(
  ProfileCubit cubit,
  BuildContext context,
  ProfileStatus state,
);

class ProfileCubitProvider extends StatefulWidget {
  final ProfileCubitProviderBuilder builder;
  final BlocWidgetListener<ProfileStatus> listener;

  const ProfileCubitProvider({
    Key? key,
    required this.builder,
    required this.listener,
  }) : super(key: key);

  @override
  State<ProfileCubitProvider> createState() => _ProfileCubitProviderState();
}

class _ProfileCubitProviderState extends State<ProfileCubitProvider> {
  ProfileCubit? profileCubit;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<CurrentUserRepository>(
      create: (_) => CurrentUserRepository.getInstance(),
      child: BlocProvider<ProfileCubit>(
        create: (cubitBuildContext) {
          profileCubit = ProfileCubit(
            currentUserRepository:
                RepositoryProvider.of<CurrentUserRepository>(cubitBuildContext),
          );

          return profileCubit!..loadUser();
        },
        child: BlocConsumer<ProfileCubit, ProfileStatus>(
          builder: (context, state) =>
              widget.builder(profileCubit!, context, state),
          listener: widget.listener,
        ),
      ),
    );
  }
}
