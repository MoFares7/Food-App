import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repositories/auth_repository.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  AuthBloc(
    this.authRepository,
  ) : super(AuthInitial()) {
    // check if user is already logged in or no
    on<AppStarted>((event, emit) async {
      // get access token from internal storage
      bool isLoggedIn = await authRepository.hasToken();

      if (isLoggedIn) {
        emit(AuthAuthenticated());
      } else {
        emit(AuthUnauthenticated());
      }
    });

    on<LoggedIn>((event, emit) async {
      emit(AuthLoading());
      await authRepository.presistToken(event.token); // store token
      emit(AuthAuthenticated());
    });

    on<LoggedOut>((event, emit) async {
      emit(AuthLoading());
      await authRepository.deleteToken();
      emit(AuthUnauthenticated());
    });
  }
}
