// ignore_for_file: constant_identifier_names

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lost_and_found/features/authentication/data/models/session_model.dart';

import '../../../features/authentication/domain/usecases/login_usecase.dart';

const String USER = "user";
const String PASSWORD = "password";
const String ID = "id";
const String TOKEN = "token";
const String EXPIRE = "expire";

abstract class SecureStorage {
  Future<bool> hasValidSession();
  Future<bool> hasCredentials();
  
  Future<void> saveLoginInformation(LoginParams param);
  Future<void> saveSessionInformation(SessionModel session);
  
  Future<SessionModel?> getSessionInformation();
  Future<LoginParams> getCredentials();

  Future<void> removeCredentials();
  Future<void> destroySession();
}

class SecureStorageImpl extends SecureStorage {
  final FlutterSecureStorage _storage;

  SecureStorageImpl(this._storage);

  @override
  Future<bool> hasValidSession() async {
    final validData =  await getSessionInformation();

    if(validData == null) {
      return false;
    }

    final expire = await _storage.read(key: EXPIRE);
    final expireDate = DateTime.fromMillisecondsSinceEpoch(int.parse(expire!), isUtc: true);
    final now = DateTime.now().toUtc();

    if(now.isAfter(expireDate)) {
      return false;
    }

    return true;
  }

  @override
  Future<bool> hasCredentials() async {
    return await _storage.containsKey(key: USER) && await _storage.containsKey(key: PASSWORD);
  }

  @override
  Future<void> saveLoginInformation(LoginParams param) async {
    await _storage.write(key: USER, value: param.user);
    return await _storage.write(key: PASSWORD, value: param.password);
  }

  @override
  Future<void> saveSessionInformation(SessionModel session) async {
    await _storage.write(key: ID, value: session.user.toString());
    await _storage.write(key: EXPIRE, value: session.expire.toString());
    return await _storage.write(key: TOKEN, value: session.token);
  }

  @override
  Future<LoginParams> getCredentials() async {
    final user = await _storage.read(key: USER);
    final password = await _storage.read(key: PASSWORD);

    return LoginParams(password: password!, user: user!);
  }

  @override
  Future<SessionModel?> getSessionInformation() async {
    final id = await _storage.read(key: ID);
    final token = await _storage.read(key: TOKEN);
    final expire = await _storage.read(key: EXPIRE);

    if (id != null && token != null && expire != null) {
      return SessionModel(token: token, user: int.parse(id), expire: int.parse(expire));
    } else {
      return null;
    }
  }

  @override
  Future<void> destroySession() async {
    await _storage.delete(key: TOKEN);
    await _storage.delete(key: ID);
    return await _storage.delete(key: EXPIRE);
  }

  @override
  Future<void> removeCredentials() async {
    await _storage.delete(key: USER);
    return await _storage.delete(key: PASSWORD);
  }
}