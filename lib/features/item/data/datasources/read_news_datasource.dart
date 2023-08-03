import '../../../../core/data/datasources/database/database.dart';
import '../models/news/read_news.dart';

abstract class ReadNewsDataSource {
  Future<void> insertReadNews(int id);
  Future<List<int>> getReadNews();
}

class ReadNewsDataSourceImpl implements ReadNewsDataSource {
  final AppDatabase database;

  ReadNewsDataSourceImpl({required this.database});


  @override
  Future<List<int>> getReadNews() async {
    final result = await database.readNewsDao.findAllReadNews();
    return result.map((news) => news.id).toList();
  }

  @override
  Future<void> insertReadNews(int id) async {
    return await database.readNewsDao.insertReadNews(ReadNews(id: id));
  }

}