import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triviaflutter/common/models/user.dart';
import 'package:triviaflutter/common/repository/current_user_repository.dart';

part 'profile_cubit.freezed.dart';

part 'profile_status.dart';

class ProfileCubit extends Cubit<ProfileStatus> {
  final CurrentUserRepository currentUserRepository;

  ProfileCubit({
    required this.currentUserRepository,
  }) : super(ProfileStatus.initial());

  Future<void> logout() {
    return currentUserRepository.logout();
  }

  Future<void> loadUser() async {
    emit(ProfileStatus.loadingProfile());
    final user = await currentUserRepository.getCurrentUser();
    emit(ProfileStatus.profileLoaded(user!));

    await for (final user in currentUserRepository.userStream) {
      print("here !");
      print(user.score);
      emit(ProfileStatus.profileLoaded(user));
    }
  }

  Future<void> setAvatarImage(File file) {
    return currentUserRepository.setAvatarImage(file);
  }
}
