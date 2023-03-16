part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthError extends AuthState {
  final String message;
  const AuthError({
    required this.message
  });
  AuthError copyWith({
    String? message
  }) => AuthError(
    message: message ?? this.message,
  );
  @override
  List<Object> get props => [message];
}

class AuthSuccess extends AuthState {}