import 'package:arq/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  String placa;
  int quantidadePortas;
  double valorFinal;

  CarroDto({
    required this.placa,
    required this.quantidadePortas,
    required this.valorFinal,
  }) : super(valor: valorFinal, qtdPortas: quantidadePortas, placa: placa);

  toMap() {
    return {
      'placa': this.placa,
      'quantidadePortas': this.quantidadePortas,
      'valorFinal': this.valorFinal,
    };
  }

  static CarroDto fromMap(Map map) {
    return CarroDto(
      placa: map['placa'], 
      quantidadePortas:  map['quantidadePortas'], 
      valorFinal:  map['valorFinal'],
    );
  }
}