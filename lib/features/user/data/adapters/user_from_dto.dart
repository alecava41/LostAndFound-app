import '../../domain/entities/user.dart';
import '../models/get_user/user_dto.dart';

extension UserFromDto on UserDto {
  User toDomain() {
    return User(id: id, username: username, hasImage: image);
  }
}
