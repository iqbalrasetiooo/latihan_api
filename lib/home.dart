import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_api/bloc/product/product_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" API "),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is ProductComplete) {
            return ListView.builder(
              itemCount: state.data.length,
              itemBuilder: (context, index) {
                var item = state.data[index];
                return ListTile(
                  title: Text(item.username.toString()),
                );
              },
            );
          } else {
            return const Center(
              child: Text('tidak ada data'),
            );
          }
        },
      ),
    );
  }
}
