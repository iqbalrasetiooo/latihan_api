import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:practice_api/api_service.dart';
import 'package:practice_api/models/product_model.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<ProductEventAction>((event, emit) async {
      try {
        emit(ProductLoading());
        var data = await ApiService().getProducts();
        emit(ProductComplete(data: data));
      } catch (e) {
        emit(ProductError(e.toString()));
      }
    });
  }
}
