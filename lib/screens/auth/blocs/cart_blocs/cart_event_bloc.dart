// cart_event.dart
abstract class CartEvent {}

class AddToCartEvent extends CartEvent {
  final String name;
  final double price;

  AddToCartEvent({required this.name, required this.price});
}

class IncreaseQuantityEvent extends CartEvent {
  final int index;

  IncreaseQuantityEvent({required this.index});
}

class DecreaseQuantityEvent extends CartEvent {
  final int index;

  DecreaseQuantityEvent({required this.index});
}

class RemoveFromCartEvent extends CartEvent {
  final int index;

  RemoveFromCartEvent({required this.index});
}
