class SearchItem {
  final int id;
  final User user;
  final String title;

  SearchItem({
    required this.id,
    required this.title,
    required this.user
  });
}

class User {
  final int id;
  final String username;

  User({required this.id, required this.username});
}