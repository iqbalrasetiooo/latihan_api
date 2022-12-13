import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:practice_api/api_service.dart';
import 'package:practice_api/bloc/product/product_model.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ApiService apiService = ApiService();
  ProductBloc(this.apiService) : super(ProductInitial()) {
    on<ProductEventAction>((event, emit) async {
      // TODO: implement event handler
      try {
        emit(ProductLoading());
        var data = await ApiService().getProduct();
        emit(ProductComplete(data: data));
      } catch (e) {
        emit(ProductError(e.toString()));
      }
    });
  }
}
