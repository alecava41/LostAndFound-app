part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.contentCreated() = _ContentCreated;
  const factory UserEvent.logout() = _Logout;
  const factory UserEvent.imageChanged(String? image) = _ImageSelected;
}