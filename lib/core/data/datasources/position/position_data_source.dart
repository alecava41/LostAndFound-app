import 'package:lost_and_found/core/domain/usecases/get_address_from_position_usecase.dart';

import '../../../../core/data/datasources/utils.dart';
import 'client/position_client.dart';
import 'models/address_dto.dart';

abstract class PositionDataSource {
  Future<AddressDto> getAddressFromPosition(GetAddressFromPositionParams params);
}

class PositionDataSourceImpl implements PositionDataSource {
  final PositionClient _client;

  PositionDataSourceImpl(this._client);

  @override
  Future<AddressDto> getAddressFromPosition(GetAddressFromPositionParams params) async {
    return _client.getAddressFromPosition(params.lat, params.lon).catchError(handleError<AddressDto>);
  }
}