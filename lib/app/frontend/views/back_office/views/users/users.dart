import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/app/frontend/config/size_config.dart';
import 'package:pos/app/frontend/views/back_office/views/users/bloc/users_bloc.dart';
import 'package:pos/app/frontend/views/back_office/views/users/bloc/users_state.dart';

class UsersBackOffice extends StatefulWidget {
  @override
  _UsersBackOfficeState createState() => _UsersBackOfficeState();
}

class _UsersBackOfficeState extends State<UsersBackOffice> {
  // ignore: close_sinks
  UsersBloc _bloc = UsersBloc(UserInitialState());

  @override
  Widget build(BuildContext context) {
    return BlocListener<UsersBloc, UserState>(
      cubit: _bloc,
      listener: (context, state) {},
      child: BlocBuilder<UsersBloc, UserState>(
        cubit: _bloc,
        builder: (BuildContext context, UserState state) {
          return Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Add new user'),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
