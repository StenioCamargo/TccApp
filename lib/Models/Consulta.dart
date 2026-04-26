import 'package:tccflutter/Models/Prontuario.dart';
import 'package:tccflutter/Models/Receiturario.dart';

class Consulta{
  int? ID_Consulta;
  int? ID_Cliente;
  Prontuario? ProntuarioPaciente;
  Receituario? ReceituarioPaciente;
  DateTime? DataAgendamento;
}