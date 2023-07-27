import 'package:lost_and_found/features/claim/data/models/claim_received/read_claim.dart';
import '../database/database.dart';

abstract class ReadClaimDataSource {
  Future<void> insertReadClaim(int id);
  Future<List<int>> getReadClaims();
}

class ReadClaimDataSourceImpl implements ReadClaimDataSource {
  @override
  Future<List<int>> getReadClaims() async {
    final database = await $FloorAppDatabase.databaseBuilder('lostandfound.db').build();
    final result = await database.readClaimDao.findAllReadClaims();
    return result.map((claim) => claim.id).toList();
  }

  @override
  Future<void> insertReadClaim(int id) async {
    final database = await $FloorAppDatabase.databaseBuilder('lostandfound.db').build();
    final read = ReadClaim(id: id);

    await database.readClaimDao.insertReadClaim(read);
    return;
  }

}