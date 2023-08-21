import 'dart:async';
import 'package:floor/floor.dart';
import 'package:lost_and_found/features/claim/data/models/claim_received/read_claim.dart';
import 'package:lost_and_found/core/data/datasources/news/read_news_dao.dart';
import 'package:lost_and_found/features/item/data/models/news/read_news.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../claim/read_claim_dao.dart';


part 'database.g.dart';

@Database(version: 1, entities: [ReadNews, ReadClaim])
abstract class AppDatabase extends FloorDatabase {
  ReadNewsDao get readNewsDao;
  ReadClaimDao get readClaimDao;
}