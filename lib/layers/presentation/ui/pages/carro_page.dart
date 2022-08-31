import 'package:arq/layers/presentation/controllers/carro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CarroPage extends StatelessWidget {
  CarroPage({Key? key}) : super(key: key);

  // TODO: SEM USAR O GET_IT
  // CarroController controller = CarroController(
  //   GetCarrosPorCorUseCaseImp(
  //     GetCarrosPorCorRepositoryImp(
  //       GetCarrosPorCorLocalDataSourceImp(),
  //     ),
  //   ),
  //   SalvarCarroFavoritoUseCaseImp(
  //     SalvarCarroFavoritoRepositoryImp()
  //   ),
  // );

  var controller = GetIt.I.get<CarroController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        color: Colors.green,
        alignment: Alignment.center,
        child: Text(
          'Placa: ${controller.carro.placa}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
