
import 'package:first_app/stripe/services/payment_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:logger/logger.dart';

class PaymentProvider extends ChangeNotifier{
  //---- payment serice object

  final Payment_Service _payment_service = Payment_Service();

  Future<void> makePayment(BuildContext context)async{
    //---- start create the payment
    try{
      //--- send payment request
      dynamic paymentIntent = await _payment_service.createPaymentServiceIntent("100", "USD");

      if(paymentIntent != null){
        Logger().w(paymentIntent);
        //--- initialize payment sheet
        await Stripe.instance.initPaymentSheet(paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntent["client_secret "],
          style: ThemeMode.dark,
          merchantDisplayName: "Test",
        ));
        //---display the payment sheet
        displayPaymentSheet(context);
      }
    }catch(e){
      Logger().e(e);
    }
  }

//---display the payment sheet
  void displayPaymentSheet(BuildContext context) async{
    try{
      await Stripe.instance.presentPaymentSheet().then((value) {
        showDialog(context: context, builder: (context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.check_circle,color: Colors.green,size: 100,),
                SizedBox(height: 10,),
                Text("Payment Sucsessfull")
              ],
            ),
          );
        });
      });
    } on StripeException catch(e){
      Logger().e(e.toString());
    }
    catch(e){
      Logger().e(e.toString());
    }
  }

}