
import 'package:base_app/features/auth/data/repositories/auth_repository.dart';
import 'package:base_app/features/auth/data/sources/auth_source.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import './network/network_client.dart';

class GlobalDependenciesService {
  final getIt = GetIt.instance;
  init() async {
    getIt.registerSingleton(Dio());
    getIt.registerSingleton(NetworkClient(getIt<Dio>()));
    getIt.registerSingleton(AuthSource(getIt<NetworkClient>()));
    getIt.registerSingleton(AuthRepository(getIt<AuthSource>()));
  }
}
