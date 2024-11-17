import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../Widget/WidgetDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Consultorio",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      drawer: DrawerWidget(),
      body: Container(
        //color: Colors.black,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/home.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    color: Colors.yellow[500],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Ultimo paciente",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "Joao - 12/09/2024 as 14:00",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.green[500],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Próximo paciente",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "Cleiton - 12/09/2024 as 15:00",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.deepPurple,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Total de consultas de hoje",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "4/10",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 350,
                          child: Column(
                            children: [
                              Text(
                                "Próximos pacientes ",
                                style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 85 * 3,
                                  child: ListView.builder(
                                    itemCount: 3,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          color: (index == 0)?Colors.green[500]:Colors.deepPurple,
                                          child: Column(
                                            children: [
                                              Text(
                                                "Nome: Stenio",
                                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "Data: " + DateFormat('dd/MM/yyy').format(DateTime.now()) + " Hora: 16:30",
                                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "Causa: teste teste teste",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                  Expanded(
                    child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Detalhes da consulta",
                                style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: SizedBox(
                                              width: 250,
                                              height: 65,
                                              child: TextFormField(
                                                style: TextStyle(color: Colors.white),
                                                decoration: InputDecoration(label: Text("Nome")),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: SizedBox(
                                              width: 250,
                                              height: 65,
                                              child: TextFormField(
                                                style: TextStyle(color: Colors.white),
                                                decoration: InputDecoration(label: Text("Email")),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 250,
                                            height: 65,
                                            child: TextFormField(
                                              style: TextStyle(color: Colors.white),
                                              decoration: InputDecoration(label: Text("Data de Nascimento")),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 250,
                                            height: 65,
                                            child: TextFormField(
                                              style: TextStyle(color: Colors.white),
                                              decoration: InputDecoration(label: Text("Documento")),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 250,
                                            height: 65,
                                            child: TextFormField(
                                              style: TextStyle(color: Colors.white),
                                              decoration: InputDecoration(label: Text("Telefone")),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.add_circle,
          color: Colors.deepPurple,
          size: 55,
        ),
      ),
    );
  }
}
