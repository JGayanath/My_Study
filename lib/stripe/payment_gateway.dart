import 'package:first_app/stripe/provider/payment_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          Provider.of<PaymentProvider>(context , listen: false).makePayment(context);
        }, child: Text("Pay 100\$",style: TextStyle(color: Colors.red),),
        ),
      ),
    );
  }
}
