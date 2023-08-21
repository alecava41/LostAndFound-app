import 'package:floor/floor.dart';
import 'package:lost_and_found/features/item/data/models/news/read_news.dart';

@dao
abstract class ReadNewsDao {
  @insert
  Future<void> insertReadNews(ReadNews news);

  @Query('SELECT * FROM ReadNews')
  Future<List<ReadNews>> findAllReadNews();
}