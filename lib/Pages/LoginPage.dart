import 'package:flutter/material.dart';
import 'package:tccflutter/Widget/WidgetLoginCadastro.dart';

import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/login-image.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: SizedBox(
            height: 300,
            width: 400,
            child: Card(
              color: Colors.black87,
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Entrar",style: TextStyle(fontSize: 20, color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                  SizedBox(
                    width: 250,
                    height: 65,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        label: Text("Email")
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    height: 65,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          label: Text("Senha")
                      ),
                    ),
                  ),
                  TextButton(onPressed: (){}, child: Text("Esqueceu sua senha ?")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(color:Colors.deepPurple,onPressed: () => _doLogin(),child: Text("Login", style: TextStyle(color: Colors.white),),),
                      MaterialButton(color:Colors.green,onPressed: () => _doCadastro(),child: Text("Cadastre-se", style: TextStyle(color: Colors.white)),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  _doCadastro(){
    return showDialog(
        context: context,
        builder:(BuildContext context){
          return AlertDialog(
            contentPadding: EdgeInsets.all(0),
            backgroundColor: Colors.black87,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.app_registration,color: Colors.deepPurple,),
                SizedBox(width: 15,),
                Text("Registre-se", style: TextStyle(fontSize: 20, color: Colors.deepPurple,fontWeight: FontWeight.bold),),
              ],
            ),
            content: WidgetLoginCadastro(),
          );
        }
    );
  }
  _doLogin(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomePage()),(Route<dynamic> route) => false);
  }
}
