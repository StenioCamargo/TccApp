import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tccflutter/Pages/PacientesPage.dart';
import '../Pages/HomePage.dart';
import '../Pages/LoginPage.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  List<Map<String,String>> permite = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              UserAccountsDrawerHeader(
                accountEmail: Text("Data: "+DateFormat('dd/MM/yyy kk:mm').format(DateTime.now())),
                accountName: Text("Usuario: Stenio"),
                currentAccountPicture: CircleAvatar(
                  child: Text("ST"),
                ),

              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Inicio"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomePage()),(Route<dynamic> route) => false);
                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text("Clientes"),
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context, builder: (BuildContext context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      content: PacientesPage(),
                    );
                  },
                  );
                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: Icon(Icons.home_repair_service_sharp),
                title: Text("Serviços"),
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context, builder: (BuildContext context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      content: SizedBox(
                          width: 450,
                          height: 420,
                          child: Container()),
                    );
                  },
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Produtos"),
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context, builder: (BuildContext context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      content: SizedBox(
                          width: 450,
                          height: 420,
                          child: Container()),
                    );
                  },
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.add_circle),
                title: Text("Novo Agendamento"),
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context, builder: (BuildContext context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      content: PacientesPage(),
                    );
                  },
                  );
                },
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                leading: Icon(Icons.info),
                title: Text("Sobre"),
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context, builder: (BuildContext context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      content: SizedBox(
                          width: 450,
                          height: 360,
                          child: Container()),
                    );
                  },
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app,color: Colors.red),
                title: Text("Sair"),
                onTap: () {
                  //VariaveisLogin.usuarioLogado = null;
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> LoginPage()),(Route<dynamic> route) => false);
                  // navigator push until remove tela login
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

}
