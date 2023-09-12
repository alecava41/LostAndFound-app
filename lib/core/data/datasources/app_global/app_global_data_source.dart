import 'package:lost_and_found/core/data/datasources/app_global/clients/app_global_client.dart';
import 'package:lost_and_found/core/data/datasources/app_global/models/ip_details_dto.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';

import '../../../../core/data/datasources/utils.dart';

abstract class AppGlobalDataSource {
  Future<IpDetailsDto> getCurrentCountry(NoParams params);
}

class AppGlobalDataSourceImpl implements AppGlobalDataSource {
  final AppGlobalClient _client;

  AppGlobalDataSourceImpl(this._client);

  @override
  Future<IpDetailsDto> getCurrentCountry(NoParams params) {
    return _client.getCurrentCountryInfo().catchError(handleError<IpDetailsDto>);
  }
}