
import 'package:flutter/material.dart';

import 'home_page.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usuarioController = TextEditingController();
  TextEditingController _contrasenaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top:16.0,bottom: 20,left: 16,right: 16),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.only(top: 20,bottom: 40),
                      child: Container(
                        height: 200,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            border: Border.all(
                              color: Colors.black12,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                            boxShadow:[BoxShadow(color: Colors.black,blurRadius: 10
                            )
                            ]
                        ),
                        child: Image(
                            image: NetworkImage('https://isteam.wsimg.com/ip/47fd6c14-f49d-422d-b828-b48b2051662f/J%C3%B3venes%20creaTIvos%20(2)-0001.png/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:400,cg:true'
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,bottom: 16,left: 8,right: 8),
                      child: TextField(
                        controller: _usuarioController,
                        autofocus: false,
                        cursorColor: Colors.deepOrange,
                        decoration: InputDecoration(
                          labelText: 'Nombre',
                          labelStyle: TextStyle(color: Colors.blue),
                          suffixIcon: Icon(Icons.perm_identity),
                          icon: Icon(Icons.account_circle),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(
                        child: TextField(
                          controller: _contrasenaController,
                          obscureText: true,
                          cursorColor: Colors.deepOrange,
                          decoration: InputDecoration(
                            labelText: 'Contraseña',
                            labelStyle: TextStyle(color: Colors.blue,
                            ),
                            suffixIcon: Icon(Icons.visibility),
                            icon: Icon(Icons.vpn_key),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: RaisedButton.icon(
                        icon: Icon(Icons.arrow_forward_ios_sharp,
                          color: Colors.deepPurple,
                        ),
                        color: Colors.deepPurple,
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()
                          )
                          );
                        },
                        label: Text(
                          'Ingresar',
                          style:  TextStyle(color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ) ,
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