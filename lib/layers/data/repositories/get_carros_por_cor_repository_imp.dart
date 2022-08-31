import 'package:arq/layers/data/datasources/get_carros_por_cor_datasources.dart';
import 'package:arq/layers/data/repositories/get_carros_por_cor_repository.dart';
import 'package:arq/layers/domain/entities/carro_entity.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {

  final GetCarrosPorCorDataSource _carrosPorCorDataSource;

  GetCarrosPorCorRepositoryImp(this._carrosPorCorDataSource);

  @override 
  CarroEntity call(String cor) {  
    return _carrosPorCorDataSource(cor);
  }
}