// cart_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBloc extends Cubit<int> {
  CartBloc() : super(0);  // Mặc định số lượng sản phẩm trong giỏ hàng là 0.

  void addToCart() {
    emit(state + 1);  // Tăng số lượng sản phẩm trong giỏ hàng.
  }
}
