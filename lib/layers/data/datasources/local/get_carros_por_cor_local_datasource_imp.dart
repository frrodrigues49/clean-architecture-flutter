import 'package:arq/layers/data/datasources/get_carros_por_cor_datasources.dart';
import 'package:arq/layers/data/dtos/carro_dto.dart';

class GetCarrosPorCorLocalDataSourceImp implements GetCarrosPorCorDataSource {

  final jsonVermelho = {
      'placa': 'ABC123',
      'quantidadePortas': 4,
      'valorFinal': 5000.00,
  };
  final jsonAny= {
      'placa': 'QWE',
      'quantidadePortas': 2,
      'valorFinal': 2000.00,
  };
  @override 
  CarroDto call(String cor) {
     if (cor.contains('vermelho')) {
      return CarroDto.fromMap(jsonVermelho);
    }
    return CarroDto.fromMap(jsonAny);
  }
}