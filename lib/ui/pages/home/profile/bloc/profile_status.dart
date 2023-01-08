part of 'profile_cubit.dart';

@freezed
class ProfileStatus {
  const factory ProfileStatus.initial() = Initial;
  const factory ProfileStatus.loadingProfile() = LoadingProfile;
  const factory ProfileStatus.profileLoaded(User user) = ProfileLoaded;
}
