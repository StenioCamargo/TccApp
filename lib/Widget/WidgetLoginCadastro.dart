import 'package:flutter/material.dart';

class WidgetLoginCadastro extends StatefulWidget {
  const WidgetLoginCadastro({super.key});

  @override
  State<WidgetLoginCadastro> createState() => _WidgetLoginCadastroState();
}

class _WidgetLoginCadastroState extends State<WidgetLoginCadastro> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 500,
      child: CustomScrollView(
        slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 250,
                height: 65,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      label: Text("Nome")
                  ),
                ),
              ),
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
              SizedBox(
                width: 250,
                height: 65,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      label: Text("Confirma Senha")
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                height: 65,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      label: Text("Telefone")
                  ),
                ),
              ),
              MaterialButton(color:Colors.green,onPressed: (){},child: Text("Cadastrar", style: TextStyle(color: Colors.white),),),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
