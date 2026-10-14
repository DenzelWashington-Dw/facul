// classe Usuário
import 'package:xml/xml.dart';
import 'dart:convert';

class Usuario {
  final int id; // final -> só pode ser atribuído uma única vez
  String nome;
  String? email; // ? -> aceita nulo

  Usuario({
    // constructor
    required this.id, // required -> requerido/ obrigatório
    required this.nome,
    this.email, // atributo não obrigatório
  });

  String formatoXML() {
    // converter para formato XML
    final builder = XmlBuilder();

    builder.element(
      "usuario",
      nest: () {
        builder.attribute("id", id);
        builder.element("nome", nest: nome);
        builder.element("email", nest: email);
      },
    );

    // criar o documento xml
    final documento = builder.buildDocument();

    // formatar (identação e quebra de linha)
    return documento.toXmlString(pretty: true);
  }

  // XML -> objeto
  factory Usuario.converterDeXML(XmlElement elemento) {
    return Usuario(
      id: int.parse(elemento.getAttribute("id") ?? "0"),
      nome: elemento.findElements("nome").first.innerXml,
      email: elemento.findElements("email").first.innerXml,
    );
  }

  // JSON
  factory Usuario.converterDeJson(Map<String, dynamic> json) {
    return Usuario(
      id: json["id"] as int,
      nome: json["nome"] as String,
      email: json["email"] as String,
    );
  }

  Map<String, dynamic> formatoJson() {
    return {'id': id, 'nome': nome, 'email': email};
  }
}

void main() {
  String listaJson =
      '{"id": 5, "nome": "Pedro", "email": "pedro@gmail.com"},{"id": 6, "nome": "Ana", "email": "ana@gmail.com"}]';
  List<dynamic> listaDecodificada = jsonDecode(listaJson);
  List<Usuario> listaDeUsuarios = listaDecodificada.map(
    (item) => Usuario.converterDeJson(item)).toList();
    print("####################################");
  for (var element in listaDeUsuarios) {
    print(element.nome);
  }

  Map<String, dynamic> mapUsuario = jsonDecode(listaJson);

  Usuario usuario2 = Usuario.converterDeJson(mapUsuario);

  print(usuario2.id);
  print(usuario2.nome);
  print(usuario2.email);

  String recriado = jsonEncode(usuario2.formatoJson());
  print(recriado);


}