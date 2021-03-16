import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/app/frontend/views/back_office/views/users/bloc/users_event.dart';
import 'package:pos/app/frontend/views/back_office/views/users/bloc/users_state.dart';

class UsersBloc extends Bloc<UserEvent, UserState> {
  UserState initialState;

  UsersBloc(this.initialState) : super(initialState);

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {

  }
}