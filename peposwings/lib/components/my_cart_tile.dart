import 'package:flutter/material.dart';
import 'package:peposwings/components/my_quantity_selector.dart';
import 'package:peposwings/models/cart_item.dart';
import 'package:peposwings/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget{
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context){
    return Consumer<Restaurant>(
      builder:(context, restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //imagen
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      height: 100,
                      width: 100,
                      ),
                  ),
              
                  const SizedBox(width: 10),
              
                  //nombre y precio
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //nombre de la comida
                      Text(cartItem.food.name),
                      //precio de la comida
                      Text('\$${cartItem.food.price}'),

                        const SizedBox(height: 10),
                    
                        QuantitySelector(
                          quantity: cartItem.quantity, 
                          food: cartItem.food, 
                          onDecrement: (){
                            restaurant.removeFromCart(cartItem);
                          }, 
                          onIncrement: (){
                            restaurant.addToCart(cartItem.food, cartItem.selectedAddons);
                          },
                        )
                    ],
                  ),
                ],
              ),
            ),
            //salas extras (addons)
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                children: cartItem.selectedAddons
                .map(
                    (addon) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: FilterChip(
                        label: Row(
                          children: [
                          //nombre
                          Text(addon.name),
                          
                          //precio
                          Text(' (\$${addon.price})',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                          ),
                        ],
                      ), 
                      shape: StadiumBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.primary
                        ),
                      ),
                      onSelected: (value) {},
                      backgroundColor: 
                          Theme.of(context).colorScheme.secondary,
                        labelStyle: TextStyle(color: 
                          Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 12),
                      ),
                    )
                  )
                  .toList()
              ),
            )
          ],
        ),
      )
    );
  }
}