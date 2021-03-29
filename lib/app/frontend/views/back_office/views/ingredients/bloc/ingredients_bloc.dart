import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/app/frontend/views/back_office/views/ingredients/bloc/ingredients_event.dart';
import 'package:pos/app/frontend/views/back_office/views/ingredients/bloc/ingredients_state.dart';


class IngredientsBloc extends Bloc<IngredientsBaseEvent, IngredientsBaseState> {
   IngredientsInitialState _initialState;

  IngredientsBloc(this._initialState) : super(_initialState);

  @override
  Stream<IngredientsBaseState> mapEventToState(IngredientsBaseEvent event) async* {

  }
}