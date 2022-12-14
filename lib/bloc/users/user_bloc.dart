import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:practice_api/api_service.dart';
import 'package:practice_api/models/user_model.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<GetAllUserEvent>((event, emit) async {
      // TODO: implement event handler
      try {
        emit(UserLoading());
        var users = await ApiService().getUser();
        emit(UserComplete(user: users));
      } catch (e) {
        emit(UserError(e.toString()));
      }
    });
  }
}
