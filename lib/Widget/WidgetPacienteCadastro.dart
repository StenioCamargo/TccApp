import 'package:flutter/material.dart';

class WidgetCadastroPaciente extends StatefulWidget {
  const WidgetCadastroPaciente({super.key});

  @override
  State<WidgetCadastroPaciente> createState() => _WidgetCadastroPacienteState();
}

class _WidgetCadastroPacienteState extends State<WidgetCadastroPaciente> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      height: 650,
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Cadastro do Paciente",
                    style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  color: Colors.deepPurple,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Informações Pessoais",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 500,
                              height: 65,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    label: Text("Nome")
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 250,
                                height: 65,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      label: Text("Cpf")
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              height: 65,
                              child: TextFormField(

                                decoration: InputDecoration(
                                    label: Text("RG")
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 250,
                                height: 65,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      label: Text("Data Nascimento")
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              height: 65,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    label: Text("Email")
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(

                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 250,
                                height: 65,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      label: Text("Telefone")
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              height: 65,
                              child: TextFormField(

                                decoration: InputDecoration(
                                    label: Text("Celular")
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(color:Colors.red,height: 310,child: Icon(Icons.person),),
                    )
                  ],
                ),
                Container(
                  color: Colors.deepPurple,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Dados de Residencia",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 65,
                      child: TextFormField(
                        decoration: InputDecoration(
                            label: Text("CEP")
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 450,
                      height: 65,
                      child: TextFormField(

                        decoration: InputDecoration(
                            label: Text("Endereço")
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 75,
                      height: 65,
                      child: TextFormField(

                        decoration: InputDecoration(
                            label: Text("Número")
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      height: 65,
                      child: TextFormField(

                        decoration: InputDecoration(
                            label: Text("Complemento")
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 250,
                      height: 65,
                      child: TextFormField(

                        decoration: InputDecoration(
                            label: Text("Bairro")
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      height: 65,
                      child: TextFormField(

                        decoration: InputDecoration(
                            label: Text("Cidade")
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      height: 65,
                      child: TextFormField(

                        decoration: InputDecoration(
                            label: Text("Estado")
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        color: Colors.red,
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          "Voltar",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.green,
                        onPressed: () {},
                        child: Text(
                          "Gravar",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
