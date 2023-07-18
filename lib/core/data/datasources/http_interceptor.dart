import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../secure_storage/secure_storage.dart';


class HttpInterceptor extends Interceptor {
  final FlutterSecureStorage _storage;

  HttpInterceptor(this._storage);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll({'Content-Type': 'application/json'});

    final noTokenURLs = <String>[
      '/register',
      '/login',
    ];

    if(noTokenURLs.contains(options.path)) {
      return handler.next(options);
    }
    
    if (await _storage.containsKey(key: TOKEN)) {
      final token = await _storage.read(key: TOKEN);
      final expire = await _storage.read(key: EXPIRE);
      final expireDate = DateTime.fromMillisecondsSinceEpoch(int.parse(expire!), isUtc: true);
      final now = DateTime.now().toUtc();

      if(now.isAfter(expireDate)) {
        options.headers.addAll({'Authorization': 'Bearer $token'});
      } else {
        // TODO: perform login (refresh token)
      }
    }

    return handler.next(options);
  }
}