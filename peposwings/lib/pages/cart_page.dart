import 'package:flutter/material.dart';
import 'package:peposwings/components/my_button.dart';
import 'package:peposwings/components/my_cart_tile.dart';
import 'package:peposwings/models/restaurant.dart';
import 'package:peposwings/pages/payment_page.dart';
import 'package:provider/provider.dart';


class CartPage extends StatelessWidget{
  const CartPage({super.key});

  @override
  Widget build(BuildContext context){
    return Consumer<Restaurant>(builder: (context, restaurant, child){
    //carrito
    final userCart = restaurant.cart;

    //UI
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrito"),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          //elimina todo el carrito
          IconButton(onPressed: () {
            showDialog(
              context: context, 
              builder: (context) => AlertDialog(
                title: const Text("¿Deseas eliminar todos los objetos del carrito?"),
                actions: [
                  //btnCancelar
                  TextButton(
                    onPressed: () => Navigator.pop(context), 
                    child: Text("Cancelar")),
                  //btnAceptar
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      restaurant.clearCart();
                    }, 
                    child: Text("Confirmar"))
                ],
              ),
            );
          }, 
          icon: const Icon(Icons.delete))
        ],
        ),
        body: Column(
          children: [

            //Orden
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty 
                  ? const Expanded(
                    child: Center(child: const Text("El carrito esta vacio.."))):
                  Expanded(
                    child: ListView.builder(
                      itemCount: userCart.length,
                      itemBuilder: (context, index) {
                        
                        //items del carrito
                        final cartItem = userCart[index];
              
                        return MyCartTile(cartItem: cartItem);
                      },
                        ),
                      ),
                  ],
                ),
            ),
              //boton para pagar
            MyButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentPage(),
                  ),
                );
              },
              text: "Pagar",
            ),

            const SizedBox(height: 25),
          ],
        ),
        );
      },
    );
  }
}
