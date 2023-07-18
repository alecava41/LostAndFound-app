import '../../../../core/data/datasources/database.dart';
import '../models/news/read_news.dart';

abstract class ReadNewsDataSource {
  Future<void> insertReadNews(int id);
  Future<List<int>> getReadNews();
}

class ReadNewsDataSourceImpl implements ReadNewsDataSource {
  @override
  Future<List<int>> getReadNews() async {
    final database = await $FloorAppDatabase.databaseBuilder('lostandfound.db').build();
    final result = await database.readNewsDao.findAllReadNews();
    return result.map((news) => news.id).toList();
  }

  @override
  Future<void> insertReadNews(int id) async {
    final database = await $FloorAppDatabase.databaseBuilder('lostandfound.db').build();
    final newsRead = ReadNews(id: id);

    await database.readNewsDao.insertReadNews(newsRead);
    return;
  }

}