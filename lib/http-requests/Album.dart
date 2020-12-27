
class Album {
  final int userId;
  final int id;
  final String title;

  Album({this.userId, this.id, this.title});

  //this constructor is used to construct a new Album instance from a map structure.
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
