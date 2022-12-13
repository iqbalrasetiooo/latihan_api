part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {}

class ProductEventAction extends ProductEvent {
  @override
  List<Object?> get props => [];
}
