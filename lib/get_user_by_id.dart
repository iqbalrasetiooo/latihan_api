import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/users/user_bloc.dart';

class GetUserById extends StatelessWidget {
  const GetUserById({super.key});
  @override
  Widget build(BuildContext context) {
    // UserBloc user = context.read<UserBloc>()..add(event);
    return Scaffold(
      appBar: AppBar(
        title: const Text('API get User by id'),
      ),
      body: Column(
        children: [
          // BlocBuilder<UserBloc, UserState>(
          //   bloc: user,
          //   builder: (context, state) {},
          // ),
        ],
      ),
    );
  }
}
