// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Myex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue.shade600,
          appBar: AppBar(backgroundColor: Colors.blue.shade600,
        elevation: 0,
        title: Text('Payement history', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
          ),
          body: Column(
            
            children: [
              Padding(
                
                padding: EdgeInsets.all(10),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  
                  decoration: BoxDecoration(
                    color: Color(0xFF291E43),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFF181C2E),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      // color: Colors.white,
                                      ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                          child: Text(
                                        "order ID",
                                        style: TextStyle(
                                          fontSize: 13, // Font size
                                          fontWeight:
                                              FontWeight.bold, // Font weight
                                          color: Colors.white, // Text color
                                        ),
                                      )),
                                      Center(
                                          child: Text(
                                        "#5343435",
                                        style: TextStyle(
                                          fontSize: 11, // Font size
                                          fontWeight:
                                              FontWeight.bold, // Font weight
                                          color: Colors.white, // Text color
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      // color: Colors.white,
                                      ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                          child: Text(
                                        "Customer Name",
                                        style: TextStyle(
                                          fontSize: 11, // Font size
                                          fontWeight:
                                              FontWeight.bold, // Font weight
                                          color: Colors.white, // Text color
                                        ),
                                      )),
                                      Center(
                                          child: Text(
                                        "M S Gandhi",
                                        style: TextStyle(
                                          fontSize: 11, // Font size
                                          fontWeight:
                                              FontWeight.bold, // Font weight
                                          color: Colors.white, // Text color
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      // color: Colors.white,
                                      ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                          child: Text(
                                        "Phone Number",
                                        style: TextStyle(
                                          fontSize: 11, // Font size
                                          fontWeight:
                                              FontWeight.bold, // Font weight
                                          color: Colors.white, // Text color
                                        ),
                                      )),
                                      Center(
                                          child: Text(
                                        "2356891470",
                                        style: TextStyle(
                                          fontSize: 11, // Font size
                                          fontWeight:
                                              FontWeight.bold, // Font weight
                                          color: Colors.white, // Text color
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      // color: Colors.white,
                                      ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                          child: Text(
                                        "Location",
                                        style: TextStyle(
                                          fontSize: 13, // Font size
                                          fontWeight:
                                              FontWeight.bold, // Font weight
                                          color: Colors.white, // Text color
                                        ),
                                      )),
                                      Center(
                                          child: Text(
                                        "Address",
                                        style: TextStyle(
                                          fontSize: 13, // Font size
                                          fontWeight:
                                              FontWeight.bold, // Font weight
                                          color: Colors.white, // Text color
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [],
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}





    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(title: Text('Flutter Border Example')),
    //     body: Container(
    //       padding: EdgeInsets.all(16.0),
    //       margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
    //       decoration: BoxDecoration(
    //         color: Colors.grey[200],
    //         border: Border.all(color: Colors.grey, width: 2.0),
    //       ),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: <Widget>[
    //           Text(
    //             'Row with Icons',
    //             style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    //           ),
    //           SizedBox(height: 10.0),
    //           Container(
    //             decoration: BoxDecoration(
    //               border: Border.all(color: Colors.red, width: 2.0),
    //             ),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: <Widget>[
    //                 Icon(Icons.star, color: Colors.blue),
    //                 Icon(Icons.star, color: Colors.red),
    //                 Icon(Icons.star, color: Colors.green),
    //               ],
    //             ),
    //           ),
    //           SizedBox(height: 20.0),
    //           Container(
    //             decoration: BoxDecoration(
    //               color: Colors.lightBlue,
    //               border: Border.all(color: Colors.blue, width: 2.0),
    //               borderRadius: BorderRadius.circular(10.0),
    //             ),
    //             height: 100.0,
    //             width: double.infinity,
    //             child: Center(child: Text('Container with Border')),
    //           ),
    //           SizedBox(height: 20.0),
    //           Container(
    //             decoration: BoxDecoration(
    //               border: Border.all(color: Colors.green, width: 2.0),
    //             ),
    //             child: Padding(
    //               padding: EdgeInsets.all(16.0),
    //               child: Text('Text with Border and Padding'),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );