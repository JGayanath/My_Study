import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;
class Payment_Service{

  String calculateAmount(String amount){
    final temp = int.parse(amount)*100;
    return temp.toString();
  }

  //---- create a payment intent
  Future<Map<String , dynamic>> createPaymentServiceIntent(String amount , String curency ) async{
    try{
      //---- request body
      Map<String , dynamic> body = {
        "amount" : calculateAmount(amount),
        "currency" : curency,
      };
      //--- make the request to stripe
      var response = await http.post(Uri.parse("https://api.stripe.com/v1/payment_intents"),
        headers: {
        "Authorization" : "Bearer ${dotenv.env["STRIPE_SCRET"]}",
          "Content-Type" : "Application/x-wwww-form-urlencoded",
        },
        body: body,
      );
      Logger().w(response.body);
      return json.decode(response.body);

    }catch(e){
      Logger().e(e);
      throw Exception(e.toString());
    }
  }
}