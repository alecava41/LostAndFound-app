// ignore_for_file: constant_identifier_names

import 'dart:io';

import 'package:dartx/dartx.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lost_and_found/features/authentication/data/models/session_model.dart';

import '../../../features/authentication/domain/usecases/login_usecase.dart';

const String USER = "user";
const String PASSWORD = "password";
const String ID = "id";
const String TOKEN = "token";
const String EXPIRE = "expire";

const String EMAIL = "email";
const String USERNAME = "username";

const String LOCALE = "locale";

abstract class SecureStorage {
  Future<bool> hasValidSession();

  Future<bool> hasCredentials();

  Future<void> saveLoginInformation(LoginParams param);

  Future<void> saveSessionInformation(SessionModel session);

  Future<SessionModel?> getSessionInformation();

  Future<LoginParams> getCredentials();

  Future<void> removeCredentials();

  Future<void> destroySession();

  Future<void> saveCredentialsForChatLogin(String email, String username);

  Future<Pair<String, String>> getCredentialsForChatLogin();

  Future<String?> getLastSetLocale();
  Future<void> setLocale(String locale);
}

class SecureStorageImpl extends SecureStorage {
  final FlutterSecureStorage _storage;

  SecureStorageImpl(this._storage);

  @override
  Future<bool> hasValidSession() async {
    final validData = await getSessionInformation();

    if (validData == null) {
      return false;
    }

    final expire = await _storage.read(key: EXPIRE);
    final expireDate = DateTime.fromMillisecondsSinceEpoch(int.parse(expire!), isUtc: true);
    final now = DateTime.now().toUtc();

    if (now.isAfter(expireDate)) {
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

    return LoginParams(password: password!, user: user!, token: Platform.isAndroid ? await FirebaseMessaging.instance.getToken() : null);
  }

  @override
  Future<SessionModel?> getSessionInformation() async {
    final id = await _storage.read(key: ID);
    final token = await _storage.read(key: TOKEN);
    final expire = await _storage.read(key: EXPIRE);
    final username = await _storage.read(key: USERNAME);
    final email = await _storage.read(key: EMAIL);

    if (id != null && token != null && expire != null && username != null && email != null) {
      return SessionModel(token: token, user: int.parse(id), expire: int.parse(expire), username: username, email: email);
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

  @override
  Future<void> saveCredentialsForChatLogin(String email, String username) async {
    await _storage.write(key: EMAIL, value: email);
    await _storage.write(key: USERNAME, value: username);
  }

  @override
  Future<Pair<String, String>> getCredentialsForChatLogin() async {
    return Pair((await _storage.read(key: EMAIL))!, (await _storage.read(key: USERNAME))!);
  }

  @override
  Future<String?> getLastSetLocale() async {
    return await _storage.read(key: LOCALE);
  }

  @override
  Future<void> setLocale(String locale) async {
    await _storage.write(key: LOCALE, value: locale);
  }
}
