import 'dart:async';
import 'package:floor/floor.dart';
import 'package:lost_and_found/features/item/data/datasources/read_news_dao.dart';
import 'package:lost_and_found/features/item/data/models/news/read_news.dart';
import 'package:sqflite/sqflite.dart' as sqflite;


part 'database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [ReadNews])
abstract class AppDatabase extends FloorDatabase {
  ReadNewsDao get readNewsDao;
}