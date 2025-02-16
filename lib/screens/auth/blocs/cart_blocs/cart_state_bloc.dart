class CartState {
  final List<CartItem> items;
  CartState({this.items = const []});
}

class CartItem {
  final String name;
  final int price;  // Đổi thành int
  int quantity;

  CartItem({required this.name, required this.price, this.quantity = 1});

  // Phương thức tính tổng giá trị món hàng
  int get totalPrice => (price * quantity).round();  // Tính tổng và làm tròn kết quả
}
