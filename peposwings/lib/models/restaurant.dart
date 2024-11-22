import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:peposwings/models/cart_item.dart';
import 'package:intl/intl.dart';
import 'cart_item.dart';
import 'food.dart';

class Restaurant with ChangeNotifier {
  String _deliveryAddress = 'Ciudad Universitaria';
  String get deliveryAddress => _deliveryAddress;
  //list of food menu
  final List<Food> _menu = [
    //Chicken
    Food(
      name: "ALITAS (250GR)", 
      description: "(Orden de alitas bañadas en tu salsa de elección, acompañadas papas a la francesa)", 
      imagePath: "lib/images/Chicken/Alitas.jpg", 
      price: 130, 
      category: FoodCategory.chiken, 
      availableAddons: [
        Addon(name: "PEPO’S HOT ", price: 12),
        Addon(name: "MANGO HABANERO", price: 12),
        Addon(name: "BUFFALO", price: 12),
        Addon(name: "BUFFALO PEPPER", price: 12),
        Addon(name: "BBQ", price: 12),
        Addon(name: "RANCH", price: 12),
        Addon(name: "CHIPOTLE", price: 12),
      ],
      ),
    Food(
      name: "BONELESS (250GR)", 
      description: "(Orden de boneless bañados en tu salsa de elección, acompañado con papas a la francesa)", 
      imagePath: "lib/images/Chicken/Boneless.jpg", 
      price: 130, 
      category: FoodCategory.chiken, 
      availableAddons: [
        Addon(name: "PEPO’S HOT ", price: 12),
        Addon(name: "MANGO HABANERO", price: 12),
        Addon(name: "BUFFALO", price: 12),
        Addon(name: "BUFFALO PEPPER", price: 12),
        Addon(name: "BBQ", price: 12),
        Addon(name: "RANCH", price: 12),
        Addon(name: "CHIPOTLE", price: 12),
      ],
      ),      
    Food(
      name: "PEPO’S BONELESS ", 
      description: "(Base de papas a la francesa con boneless encima bañados con queso y salsa de tu elección)", 
      imagePath: "lib/images/Chicken/PepoBoneless.jpg",
      price: 165, 
      category: FoodCategory.chiken, 
      availableAddons: [
        Addon(name: "PEPO’S HOT ", price: 12),
        Addon(name: "MANGO HABANERO", price: 12),
        Addon(name: "BUFFALO", price: 12),
        Addon(name: "BUFFALO PEPPER", price: 12),
        Addon(name: "BBQ", price: 12),
        Addon(name: "RANCH", price: 12),
        Addon(name: "CHIPOTLE", price: 12),
      ],
      ),
   
    //Hamburguesas
    Food(
      name: "HAMBURGUESA SENCILLA", 
      description: "(Hamburguesa de res acompañada con lechuga, tomate, queso, salami y jamon)", 
      imagePath: "lib/images/Hamburguesas/Hamburguesa Sencilla.jpg",
      price: 120, 
      category: FoodCategory.hamburguesas, 
      availableAddons: [
        Addon(name: "PEPO’S HOT ", price: 12),
        Addon(name: "MANGO HABANERO", price: 12),
        Addon(name: "BUFFALO", price: 12),
        Addon(name: "BUFFALO PEPPER", price: 12),
        Addon(name: "BBQ", price: 12),
        Addon(name: "RANCH", price: 12),
        Addon(name: "CHIPOTLE", price: 12),
      ],
      ),
    Food(
      name: "HAMBURGUESA DE BONELESS", 
      description: "(Hamburguesa de boneless acompañada con lechuga, queso y jamon)", 
      imagePath: "lib/images/Hamburguesas/Hamburguesa de Boneless.jpg",
      price: 140, 
      category: FoodCategory.hamburguesas, 
      availableAddons: [
        Addon(name: "PEPO’S HOT ", price: 12),
        Addon(name: "MANGO HABANERO", price: 12),
        Addon(name: "BUFFALO", price: 12),
        Addon(name: "BUFFALO PEPPER", price: 12),
        Addon(name: "BBQ", price: 12),
        Addon(name: "RANCH", price: 12),
        Addon(name: "CHIPOTLE", price: 12),
      ],
      ),
    Food(
      name: "HAMBURGUESA DE BBQ", 
      description: "(Hamburguesa de res acompañada con queso, tocino, cebolla caramelizada, bañada en salsa bqq de la casa)", 
      imagePath: "lib/images/Hamburguesas/Hamburguesa de BBQ.jpg", 
      price: 140, 
      category: FoodCategory.hamburguesas, 
      availableAddons: [
        Addon(name: "PEPO’S HOT ", price: 12),
        Addon(name: "MANGO HABANERO", price: 12),
        Addon(name: "BUFFALO", price: 12),
        Addon(name: "BUFFALO PEPPER", price: 12),
        Addon(name: "BBQ", price: 12),
        Addon(name: "RANCH", price: 12),
        Addon(name: "CHIPOTLE", price: 12),
      ],
      ),

    //Tacos 
    Food(
      name: "TACOS DE CARNE ASADA", 
      description: "(5 piezas acompañados de cebolla asada y papas)", 
      imagePath: "lib/images/Tacos/TacosDeCarneAsada.jpg", 
      price: 125, 
      category: FoodCategory.tacos, 
      availableAddons: [
        Addon(name: "PEPO’S HOT ", price: 12),
        Addon(name: "MANGO HABANERO", price: 12),
        Addon(name: "BUFFALO", price: 12),
        Addon(name: "BUFFALO PEPPER", price: 12),
        Addon(name: "BBQ", price: 12),
        Addon(name: "RANCH", price: 12),
        Addon(name: "CHIPOTLE", price: 12),
      ],
      ),

    //Entradas
    Food(
      name: "DEDOS DE QUESO ", 
      description: "(7 Dedos de queso acompañados conaderezo chipotle)", 
      imagePath: "lib/images/Entradas/Dedos de Queso.jpg", 
      price: 80, 
      category: FoodCategory.entradas, 
      availableAddons: [
        Addon(name: "PEPO’S HOT ", price: 12),
        Addon(name: "MANGO HABANERO", price: 12),
        Addon(name: "BUFFALO", price: 12),
        Addon(name: "BUFFALO PEPPER", price: 12),
        Addon(name: "BBQ", price: 12),
        Addon(name: "RANCH", price: 12),
        Addon(name: "CHIPOTLE", price: 12),
      ],
      ),
    Food(
      name: "ELOTE SENCILLO", 
      description: "(1 Elote dividido sazonado en lemon pepper)", 
      imagePath: "lib/images/Entradas/Elote Sencillo.jpg", 
      price: 50, 
      category: FoodCategory.entradas, 
      availableAddons: [
        Addon(name: "PEPO’S HOT ", price: 12),
        Addon(name: "MANGO HABANERO", price: 12),
        Addon(name: "BUFFALO", price: 12),
        Addon(name: "BUFFALO PEPPER", price: 12),
        Addon(name: "BBQ", price: 12),
        Addon(name: "RANCH", price: 12),
        Addon(name: "CHIPOTLE", price: 12),
      ],
      ),
    Food(
      name: "PAPOTAS ESPECIALES", 
      description: "(Orden de papas a la francesa bañadas con queso cheddar y trozos de tocino)", 
      imagePath: "lib/images/Entradas/Papotas Especiales.jpg", 
      price: 105, 
      category: FoodCategory.entradas, 
      availableAddons: [
        Addon(name: "PEPO’S HOT ", price: 12),
        Addon(name: "MANGO HABANERO", price: 12),
        Addon(name: "BUFFALO", price: 12),
        Addon(name: "BUFFALO PEPPER", price: 12),
        Addon(name: "BBQ", price: 12),
        Addon(name: "RANCH", price: 12),
        Addon(name: "CHIPOTLE", price: 12),
      ],
      ),
    Food(
      name: "ORDEN DE PAPAS A LA FRANCESA", 
      description: "(400 gramos)", 
      imagePath: "lib/images/Entradas/Orden de PapasFrancesa.jpg", 
      price: 75, 
      category: FoodCategory.entradas, 
      availableAddons: [
        Addon(name: "PEPO’S HOT ", price: 12),
        Addon(name: "MANGO HABANERO", price: 12),
        Addon(name: "BUFFALO", price: 12),
        Addon(name: "BUFFALO PEPPER", price: 12),
        Addon(name: "BBQ", price: 12),
        Addon(name: "RANCH", price: 12),
        Addon(name: "CHIPOTLE", price: 12),
      ],
      ),
    Food(
      name: "ELOTE PEPO´S", 
      description: "(1 Elote dividido con queso y salsa de la casa)", 
      imagePath: "lib/images/Entradas/ElotePepos.jpg", 
      price: 65, 
      category: FoodCategory.entradas, 
      availableAddons: [
        Addon(name: "PEPO’S HOT ", price: 12),
        Addon(name: "MANGO HABANERO", price: 12),
        Addon(name: "BUFFALO", price: 12),
        Addon(name: "BUFFALO PEPPER", price: 12),
        Addon(name: "BBQ", price: 12),
        Addon(name: "RANCH", price: 12),
        Addon(name: "CHIPOTLE", price: 12),
      ],
      ),

    //Bebidas
    Food(
      name: "REFRESCOS", 
      description: "(Refresco de 500ml)", 
      imagePath: "lib/images/Bebidas/Refrescos.jpg", 
      price: 25, 
      category: FoodCategory.bebidas, 
      availableAddons: [
        Addon(name: "PEPO’S HOT ", price: 12),
        Addon(name: "MANGO HABANERO", price: 12),
        Addon(name: "BUFFALO", price: 12),
        Addon(name: "BUFFALO PEPPER", price: 12),
        Addon(name: "BBQ", price: 12),
        Addon(name: "RANCH", price: 12),
        Addon(name: "CHIPOTLE", price: 12),
      ],
      ),
    Food(
      name: "AGUA", 
      description: "(Agua de 500ml)", 
      imagePath: "lib/images/Bebidas/Agua.jpg", 
      price: 20, 
      category: FoodCategory.bebidas, 
      availableAddons: [
        Addon(name: "PEPO’S HOT ", price: 12),
        Addon(name: "MANGO HABANERO", price: 12),
        Addon(name: "BUFFALO", price: 12),
        Addon(name: "BUFFALO PEPPER", price: 12),
        Addon(name: "BBQ", price: 12),
        Addon(name: "RANCH", price: 12),
        Addon(name: "CHIPOTLE", price: 12),
      ],
      ),

  ];

  /*

  G E T T E R S

  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*
  O P E R A T I O N S
  */  
  //user cart
  final List<CartItem> _cart = [];

  // add to cart 
  void addToCart(Food food, List<Addon> selectedAddons) {
    //comprar si ya se tiene un objeto igual en el carrito
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //comprobacion
      bool isSameFood = item.food == food;
      //comprobacion de las mismas salsas
      bool isSameAddons = 
        ListEquality().equals(item.selectedAddons, selectedAddons);
      
      return isSameFood && isSameAddons;
    });
    //si el item ta existe se aumenta la cantidad
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //se agrega si no se tiene
    else {
      _cart.add(CartItem(
        food: food, 
        selectedAddons: selectedAddons),
        );
    }
    notifyListeners();
  }
  // retire from the cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if(cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }
  // get total price of cart
  double getTotalPrice(){
    double total = 0.0;

    for (CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }
  //get total number of items
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }
  //clear cart
  void clearCart(){
    _cart.clear();
    notifyListeners();
  }


  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }
  /*
  
  H E L P E R S

  */ 

  //generate a recepeit 
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Aquí está tu recibo");
    receipt.writeln();

    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln('');
    receipt.writeln('------------');

    for (final cartItem in _cart) {
    receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
    if(cartItem.selectedAddons.isNotEmpty) {
      receipt.writeln(" Addons: ${_formatAddons(cartItem.selectedAddons)}");
    }
    }
  receipt.writeln("--------------");
  receipt.writeln();
  receipt.writeln("Artículos totales: ${getTotalItemCount()}");
  receipt.writeln("Precio total: ${_formatPrice(getTotalPrice())}");
  receipt.writeln();
  receipt.writeln("Entrega a: $_deliveryAddress");

  return receipt.toString();
  }
  

  //format double value into money
  String _formatPrice(double price) {
    return "\$" + price.toStringAsFixed(2);
  }
  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
    .join(", ");
  }
}