import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'fuel_saving.dart';


class HomeController extends GetxController{

  final formGallery = GlobalKey<FormState>();
  RxInt counter = 0.obs;

  var fuelSavings = Rx<List<Fuel>?>(null);

  TextEditingController phoneEditingController = TextEditingController();

  bool validatemobile(String mobile){
    return mobile.length==10?true:false;
  }
  void incrementCounter(){
    counter.value+=1;

  }

  final _client = GetConnect();


  void getapiResponse() async {
    try {
      print('api call satarted');
      final response = await _client.request(
          'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline',
          'get');
      fuelSavings.value= fuelFromJson(response.bodyString??"");
      //print(response.body.toString());
      update();

      print('api call ended');
    }catch(e){
      print(e);
    }
  }



}