part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserComplete extends UserState {
  final List<UserModel> user;
  const UserComplete({required this.user});
}

class UserError extends UserState {
  String? message;
  UserError(this.message);
}
