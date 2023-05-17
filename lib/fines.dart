import 'package:fines/details.dart';
import 'package:fines/network/remote/dio_Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class finesScreen extends StatelessWidget {
  var carta_name = [
    "Fyoum",
    "cairo",
    "suez",
    "Alex",
  ];

  var carta_date = [
    "10/5/2023",
    "6/6/2023",
    "7/8/2023",
    "15/10/2023",
  ];

  @override
  Widget build(BuildContext context) {
    DioHelper.init();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          DioHelper.getData(
            url: 'https://run.mocky.io/v3/da2f5a0a-8f9d-4b27-a83c-3931c13cc673',

            // query: {
            //   'name': 'youssef',
            //   'apiKey': 'da2f5a0a-8f9d-4b27-a83c-3931c13cc673'
            // },
          ).then((value) {
            print(value.data.toString());
          }).catchError((error) {
            print(error.toString());
          });
        },
        child: Icon(
          Icons.add,
        ),
      ),
      backgroundColor: Color(0xff0c7075),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Column(
              children: [
                Align(
                  child: Text(
                    "Fines",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    for (int i = 0; i < carta_name.length; i++)
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.only(right: 10),
                        height: 120,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Color(0xffF5D7DB),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(children: [
                          Container(
                            height: 100,
                            width: 90,
                            margin: EdgeInsets.only(left: 8),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xffd4ecf7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              "assets/car.png",
                              height: 150,
                              width: double.infinity,
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15, top: 20, bottom: 25),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    carta_name[i],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Date: ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        carta_date[i],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Details()));
                                          },
                                          child: Container(
                                            height: 26,
                                            width: 80,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Color(0xffe8bcb9),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Details",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "\$12",
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 6),
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffe8bcb9),
                                ),
                                child: Center(
                                  child: Text(
                                    "Pay",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total : ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "\$50",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffe8bcb9),
                      ),
                      child: Center(
                        child: Text(
                          "Pay All",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
