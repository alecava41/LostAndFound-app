import 'package:floor/floor.dart';
import 'package:lost_and_found/features/claim/data/models/claim_received/read_claim.dart';

@dao
abstract class ReadClaimDao {
  @insert
  Future<void> insertReadClaim(ReadClaim claim);

  @Query('SELECT * FROM ReadClaim')
  Future<List<ReadClaim>> findAllReadClaims();
}