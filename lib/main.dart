import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/home_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: DashBoard(),
    );
  }
}

class DashBoard extends StatelessWidget {

  var controller = Get.put(HomeController());

  DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
        ),

        body: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: InkWell(

                onTap: () {
                  controller.getapiResponse();
                  //_launchMapsUrl();

                },
                child: const Text('Product Details.', style: TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              height: 600,
              child: GetBuilder(
                  init: controller,
                  builder: (context) {
                    return ListView.builder(
                        itemCount: controller.fuelSavings.value?.length??0,
                        itemBuilder: (context, index) {
                          return Container(
                            //padding: EdgeInsets.all(8),
                            //margin: EdgeInsets.all(8),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.network(
                                      controller.fuelSavings.value?[index].imageLink??""
                                  ),

                                  const SizedBox(height: 10,),
                                  Row(

                                    children: [
                                      const Text('Product id :', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),

                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[index].id
                                            .toString() ?? "value is not available"),

                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      const Text('Brand :', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[0]
                                            .brand ?? "value is not available"),

                                      ),
                                    ],

                                  ),

                                  const SizedBox(height: 10,),


                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child:Text('Currency:',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),) ,
                                      )
                                    ],

                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex:1,
                                        child: Text('Product Name :', style: TextStyle(
                                            fontSize: 15.0, fontWeight: FontWeight.bold)),
                                      ),


                                      const SizedBox(width: 5,),


                                      Expanded(
                                        flex: 2,
                                        child: InkWell(
                                          onTap: () {

                                          },
                                          child: Text(controller.fuelSavings.value?[0].name??
                                              "value is not available"),

                                        ),
                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Price :', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[0]
                                            .price ?? "value is not available"),

                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      const Text('Product Type:', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[0]
                                            .productType ?? "value is not available"),

                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      const Text('Product Category:', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[0]
                                            .category ?? "value is not available"),

                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      const Text('Created At:', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[0]
                                            .createdAt.toString() ??
                                            "value is not available"),

                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      const Text('Updated At:', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[0]
                                            .updatedAt.toString() ??
                                            "value is not available"),

                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      const Text('Rating :', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[0].rating
                                            .toString() ?? "value is not available"),

                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      const Text('Website Link:', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[0]
                                            .websiteLink ?? "value is not available"),

                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      const Text('Product Link:', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5),


                                      Expanded(
                                        flex: 2,
                                        child: InkWell(
                                          onTap: () {

                                          },
                                          child: Text(controller.fuelSavings.value?[0]
                                              .productLink ?? "value is not available"),

                                        ),
                                      ),
                                    ],

                                  ),

                                ],

                              ),
                            ),
                          );
                        });
                  }
              ),
            ),
          ],


        )

    );
  }

}