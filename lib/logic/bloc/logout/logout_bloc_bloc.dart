import 'package:ataa_charity_system/data/repositories/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repositories/shared_prefs_repository.dart';
import '../auth/auth_bloc_bloc.dart';

part 'logout_bloc_event.dart';
part 'logout_bloc_state.dart';

class LogoutBlocBloc extends Bloc<LogoutBlocEvent, LogoutBlocState> {
  final AuthRepository authRepository;
  final AuthBloc authBloc;
  final SharedPrefsRepository sharedPrefsRepository;
  LogoutBlocBloc(this.authRepository, this.authBloc, this.sharedPrefsRepository)
      : super(LogoutBlocInitial()) {
    on<LogoutEventPressed>((event, emit) async {
      emit(LogoutBlocLoding());

      try {
        final token = await sharedPrefsRepository.getAccessToken();
        if (token == null) {
          throw Exception('The token is not Founded');
        }

        // if token was found delete it
        final message = await authRepository.logout(token);
        if (message == null) {
          throw Exception('Error while deleting token');
        }
        authBloc.add(LoggedOut());
        emit(LogoutBlocInitial());
      } catch (ex) {
        emit(LogoutBlocFailur(ex.toString()));
      }
    });
  }
}
