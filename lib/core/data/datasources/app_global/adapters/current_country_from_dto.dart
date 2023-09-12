import 'package:lost_and_found/core/data/datasources/app_global/models/ip_details_dto.dart';
import 'package:lost_and_found/core/domain/entities/current_country.dart';

extension CurrentCountryFromDto on IpDetailsDto {
  CurrentCountry toDomain() {
    return CurrentCountry(countryCode: countryCode.toLowerCase().substring(0,2));
  }
}
