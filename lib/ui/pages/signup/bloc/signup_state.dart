part of 'signup_cubit.dart';


@freezed
class SignupState {
  const factory SignupState.initial() = Initial;
  const factory SignupState.phoneNumberForm() = PhoneNumberForm;
  const factory SignupState.phoneNumberSubmitted() = PhoneNumberSubmitted;
  const factory SignupState.phoneNumberSubmitionError(String message) = PhoneNumberSubmitionError;
  const factory SignupState.phoneNumberVerificationCodeSent(String code) = PhoneNumberVerificationCodeSent;
  const factory SignupState.accountFetching() = AccountFetching;
  const factory SignupState.accountFetchingError(String message) = AccountFetchingError;
  const factory SignupState.accountCreation() = AccountCreation;
  const factory SignupState.accountCreating() = AccountCreating;
  const factory SignupState.accountCreationError(String message) = AccountCreationError;
  const factory SignupState.loggedIn() = LoggedIn;
}

bool isLoadingState(SignupState state) {
  return state is PhoneNumberSubmitted || state is AccountFetching || state is AccountCreating || state is Initial;
}

bool isErrorState(SignupState state) {
  return state is PhoneNumberSubmitionError || state is AccountFetchingError || state is AccountCreationError;
}