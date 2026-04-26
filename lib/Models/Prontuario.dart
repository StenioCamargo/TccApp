import 'package:tccflutter/Models/AnamneseCapilar.dart';
import 'package:tccflutter/Models/AnamneseCorporea.dart';
import 'package:tccflutter/Models/Endereco.dart';

class Prontuario {
  int? ID_Prontuario;
  int? ID_Consulta;

  String? NomePaciente;
  String? EscolaridadePaciente;
  String? AlergiaPaciente;
  String? Doenca;
  String? MedicamentoUsoContinuo;
  String? ExamesRequeridos;
  DateTime? DataNascimento;
  Endereco? EmderecPaciente;

  AnamneseCorporea? Acorporea;
  AnamneseCapilar? Acapilar;

}