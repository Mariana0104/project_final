import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyect_gibhub/pages/login_page.dart';



class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.orange,
            appBar: AppBar(
              title: Text('Tu perfil',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),),
              backgroundColor: Colors.deepOrange,
            ),
            body: Center(
                child:Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                              radius: 70,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/YO-copia.jpeg')
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Mariana Arboleda Bedoya',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text('Envigado-Antioquia, Colombia',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height:225,
                            width: 175,
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
                                boxShadow:[BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10
                                )
                                ]
                            ),
                            child: Image.asset('assets/captura_mobile.png'
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: IconButton(
                              icon: Icon(Icons.login,
                                  size: 40
                              ),
                              onPressed:() {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) => LoginPage()
                                    )
                                );
                              }
                          ),
                        ),
                      ]
                  ),
                )
            ),
          )
      ),
    );
  }
}
