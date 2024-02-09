import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dream_bell_school/Controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    TextEditingController namecontroller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Dream Bell School", style: TextStyle(color:Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:55,right: 50),
              child: SizedBox(
                height: 100,
                  width: 80,
                  child: Image.asset("android/assets/images/logo.png")),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20, right: 20),
              child: Container(
                height: 55,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Colors.white.withOpacity(.6)),
                child: Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: TextField(
                    controller: namecontroller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                     hintText: "TIME TO WAKE UP",
                     hintStyle: TextStyle(color: Colors.black.withOpacity(.5)),
                      border: InputBorder.none),
                      ),
                ),
              ),
            ),
            const SizedBox(height:3,),
            // SizedBox(
            //   height: 200,
            //   child: ListView(
            //     children: [
            //       CarouselSlider(
            //         items:[
            //         Container(
            //           margin: const EdgeInsets.all(6.0),
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(8.0),
            //             image: const DecorationImage(
            //               image: NetworkImage(
            //                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTLvBDv2DyjSXs8PIqjIYPVi8xJVUbfMAM_YFQsI1yFj_BUznZKd0dEmus0GGoeHXxxAw&usqp=CAU"),
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //         ),
            //         Container(
            //           margin: const EdgeInsets.all(6.0),
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(8.0),
            //             image: const DecorationImage(
            //               image: NetworkImage(
            //                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToVze-IW4dcWbH6O8mJ6cSJJHOk1X_xh92pw&usqp=CAU"),
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //         ),
            //           Container(
            //             margin: const EdgeInsets.all(6.0),
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(8.0),
            //               image: const DecorationImage(
            //                 image: NetworkImage(
            //                     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8sFOYId-VzA3vZzDOhJRGhVnDX7cH2hgLqQEsP3HEEzKcMktXBnbRinzZGqf3r2n_xjY&usqp=CAU"),
            //                 fit: BoxFit.cover,
            //               ),
            //             ),
            //           ),
            //           Container(
            //             margin: const EdgeInsets.all(6.0),
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(8.0),
            //               image: const DecorationImage(
            //                 image: NetworkImage(
            //                     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScDNlf6d00p0Pqq9j6ALIyBk10Dy_q-x3_3Q&usqp=CAU"),
            //                 fit: BoxFit.cover,
            //               ),
            //             ),
            //           ),
            //           Container(
            //             margin: const EdgeInsets.all(6.0),
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(8.0),
            //               image: const DecorationImage(
            //                 image: NetworkImage(
            //                     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLlUDBuFY8W1ubr7fc4u4WXKJw9CLTALQ883rAADqoxosZQi9-hjafDv0LfpBf4ZwANf8&usqp=CAU"),
            //                 fit: BoxFit.cover,
            //               ),
            //             ),
            //           )
            //       ], options: CarouselOptions(
            //         height: 200.0,
            //          enlargeCenterPage: true,
            //          autoPlay: true,
            //         aspectRatio: 16 / 9,
            //         autoPlayCurve: Curves.fastOutSlowIn,
            //         enableInfiniteScroll: true,
            //         autoPlayAnimationDuration: const Duration(milliseconds: 800),
            //         viewportFraction: 0.8,
            //       ),
            //       )
            //     ],
            //   ),
            // ),
            // const SizedBox(height: 5,),
            // Container(
            //   height: 220,
            //   width: 320,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(8),
            //       border: Border.all(color: Colors.grey.shade300, width: 2)
            //   ),
            //
            //   ),
            Obx((){
              if(userController.isLoading.value){
                return Center(child: CircularProgressIndicator());
              }
              return SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: userController.usersList.length,
                    itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.grey,
                        child: ListTile(
                          title: Text(userController.usersList[index].message),
                          //subtitle: Text(userController.usersList[index].status),
                        ),
                      ),
                    );

                    }),
              );


            })


          ],
        ),
      )
    );
  }
}
