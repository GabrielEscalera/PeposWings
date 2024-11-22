import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/restaurant.dart';
import '../services/auth/database/firestore.dart';
import 'my_receipt.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPage();
}
class _DeliveryProgressPage extends State<DeliveryProgressPage> {
    FirestoreService db = FirestoreService();
    @override
    void initState() {
      super.initState();

      String receipt = context.read<Restaurant>().displayCartReceipt();
      db.saveOrderToDatabase(receipt);
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Progreso de la Entrega..."),
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: _buildBottomNavBar(context),
        body: Column(
          children: [
            MyReceipt(),
          ],
        ),
      );
    }
}
//Custom Bottom Nav Bar
Widget _buildBottomNavBar(BuildContext context) {
  return Container(
    height: 100,
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.secondary,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
    ),
    padding: const EdgeInsets.all(25),
    child: Column(
      children: [
        Row(children: [
          //Profile
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ),

          const SizedBox(width: 10),

          //Details
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Said Cavazos Cazares",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text("Dueño Pepo's Wings and More",
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),

          const Spacer(),
          Row(
            children: [
              //Message Button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              const SizedBox(width: 10),


            ],
          )




        ],
        ),
      ],
    ),
  );
}

