part of 'product_bloc.dart';

abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductComplete extends ProductState {
  final List<ProductModel> data;
  ProductComplete({required this.data});
}

class ProductError extends ProductState {
  String? error;
  ProductError(this.error);
}
