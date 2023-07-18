class UserItem {
  final int id;
  final String title;
  final int claims;

  const UserItem({required this.id, required this.title, required this.claims});
}

enum ItemType { found, lost }
