import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_api/bloc/product/product_bloc.dart';
import 'package:practice_api/get_all_user_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
        title: const Text("API Products"),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        bloc: context.read<ProductBloc>()..add(ProductEventAction()),
        builder: (context, state) {
          if (state is ProductComplete) {
            return ListView.builder(
              itemCount: state.data.length,
              itemBuilder: (context, index) {
                var item = state.data[index];
                return ListTile(
                  leading: CircleAvatar(child: Text('${index + 1}')),
                  title: Text(item.username.toString()),
                  subtitle: Text(item.profile!.staticData.toString()),
                );
              },
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
