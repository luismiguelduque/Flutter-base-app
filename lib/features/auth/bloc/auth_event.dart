part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class OnSignUserIn extends AuthEvent{}

class OnSignUserUp extends AuthEvent{}

class OnLogUserOut extends AuthEvent{}