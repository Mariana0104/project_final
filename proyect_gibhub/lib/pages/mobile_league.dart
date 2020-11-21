import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';


class MobileLeague extends StatefulWidget {
  @override
  _MobileLeagueState createState() => _MobileLeagueState();
}

class _MobileLeagueState extends State<MobileLeague> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.orange,
            body: Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:40.0,vertical: 20.0),
                          child: Container(
                            height:250,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                border: Border.all(
                                  color: Colors.black12,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                                boxShadow:[BoxShadow(color: Colors.black,blurRadius: 10
                                )
                                ]
                            ),
                            child: Image.asset('assets/captura_mobile.png'
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:20.0),
                          child: FlatButton(onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  LoginPage()
                            )
                            );
                          },
                              child: Container(
                                height: 250,
                                width: 250,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.black12,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.only(

                                      topLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                    ),
                                    boxShadow:[BoxShadow(color: Colors.black,blurRadius: 10
                                    )
                                    ]
                                ),
                                child: Image(
                                  image: NetworkImage('https://isteam.wsimg.com/ip/47fd6c14-f49d-422d-b828-b48b2051662f/J%C3%B3venes%20creaTIvos%20(2)-0001.png/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:400,cg:true'),
                                ),
                              )
                          ),
                        )
                      ]
                  ),
                )
            ),
          ),
        )
    );
  }
}