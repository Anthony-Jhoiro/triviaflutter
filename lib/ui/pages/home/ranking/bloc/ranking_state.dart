
part of 'ranking_cubit.dart';


@freezed
class RankingState {
  const factory RankingState.initial() = Initial;
  const factory RankingState.fetchingUsers() = FetchingUsers;
  const factory RankingState.fetchingError(String message) = FetchingError;
  const factory RankingState.userLoaded(List<User> users) = UserLoaded;
}