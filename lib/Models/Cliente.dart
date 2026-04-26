import 'package:tccflutter/Models/AnamneseCapilar.dart';
import 'package:tccflutter/Models/AnamneseCorporea.dart';
import 'package:tccflutter/Models/Endereco.dart';


class Cliente{
  int? ID_Cliente;
  String? Nome;
  String? Emai;
  String? Cpf;
  String? DataNascimento;
  String? Sexo;
  String? Telefone;
  Endereco? EnderecoCliente;
  AnamneseCorporea? Acorporea;
  AnamneseCapilar? Acapilar;
  Cliente(this.ID_Cliente, this.Nome, this.Emai, this.Cpf, this.DataNascimento,
      this.Sexo, this.Telefone, this.EnderecoCliente, this.Acorporea, this.Acapilar);

}