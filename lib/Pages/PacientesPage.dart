import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tccflutter/Widget/WidgetPacienteCadastro.dart';

class PacientesPage extends StatefulWidget {
  const PacientesPage({super.key});

  @override
  State<PacientesPage> createState() => _PacientesPageState();
}

class _PacientesPageState extends State<PacientesPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140 * 4,
      width: 450,
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Pacientes",
                    style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SizedBox(
                            height: 65,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Pesquisar nome ou documento",
                              ),
                            ),
                          ),
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.search))
                    ],
                  ),
                  SizedBox(
                    height: 90 * 4,
                    width: 450,
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            color: Colors.deepPurple,
                            child: ListTile(
                              title: Text(
                                "Nome: Stenio",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "Documento: 450.236.858-02",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              leading: Text(
                                "ID: " + index.toString(),
                                style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  MaterialButton(
                    color: Colors.green,
                    onPressed: () => _cadastroPaciente(),
                    child: Text(
                      "Novo Paciente",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _cadastroPaciente() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: WidgetCadastroPaciente(),
        );
      },
    );
    setState(() {
      //reloadPacientes()
    });
  }
}
