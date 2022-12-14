import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_api/bloc/users/user_bloc.dart';
import 'get_user_by_id.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'User Page',
        child: const Icon(
          Icons.arrow_right,
        ),
      ),
      appBar: AppBar(
        title: const Text("API Get All Users"),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        bloc: context.read<UserBloc>()..add(GetAllUserEvent()),
        builder: (context, state) {
          if (state is UserComplete) {
            return GestureDetector(
              onTap: () => const GetUserById(),
              child: ListView.builder(
                itemCount: state.user.length,
                itemBuilder: (context, index) {
                  var item = state.user[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        item.avatar.toString(),
                      ),
                    ),
                    title: Text(item.name.toString()),
                  );
                },
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
