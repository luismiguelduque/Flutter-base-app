import 'package:base_app/features/auth/data/repositories/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final getIt = GetIt.instance;
  
  AuthBloc() : super(AuthInitial()) {
    on<OnSignUserIn>((event, emit) async {
      try{
        final user = await getIt<AuthRepository>().signUserIn(
          email: "",
          password: ""
        );
      }catch(e){
        emit(const AuthError(message: ""));
        rethrow;
      }
    });
    on<OnSignUserUp>((event, emit) {
      // TODO: implement event handler
    });
    on<OnLogUserOut>((event, emit) {
      // TODO: implement event handler
    });
  }
}
