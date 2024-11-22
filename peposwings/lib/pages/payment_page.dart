import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:peposwings/components/my_button.dart';

import '../services/auth/database/firestore.dart';
import 'delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  //user wants to pay
  void userTappedPay () {
    if (formKey.currentState!.validate()) {
      //show dialog if is valid
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Confirma El Pago"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("No.Tarjeta: $cardNumber"),
                Text("Fecha de Expiración: $expiryDate"),
                Text("Nombre del titular: $cardHolderName"),
                Text("CVV: $cvvCode"),
              ],

            ),
          ),
          actions: [
            //cancel button
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancelar")
            ),

            //yes button
            TextButton(
                onPressed: () {

                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeliveryProgressPage(),
                    ),
                  );
                },
                child: const Text("Aceptar")
            ),


          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Pago"),
      ),
      body: SingleChildScrollView(  // Agregar este widget
        child: Padding(
          padding: const EdgeInsets.all(16.0),  // Puedes ajustar los márgenes aquí
          child: Column(
            children: [
              //credit Card
              CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                onCreditCardWidgetChange: (p0) {},
              ),

              //credit card form
              CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                themeColor: Colors.black,
                onCreditCardModelChange: (data) {
                  setState(() {
                    cardNumber = data.cardNumber;
                    expiryDate = data.expiryDate;
                    cardHolderName = data.cardHolderName;
                    cvvCode = data.cvvCode;
                  });
                },
                formKey: formKey,
              ),

              const SizedBox(height: 16),  // Espacio entre el formulario y el botón

              MyButton(
                text: "Pagar Ahora",
                onTap: userTappedPay,
              ),

              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}