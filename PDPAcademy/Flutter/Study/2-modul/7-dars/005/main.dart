// Rasmda keltirilgan jsonni obyektga aylantiring.

class Album {
  final int albumIdm, id;
  final String title, url, thumbnailUrl;

  Album({
    required this.albumIdm,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });
  factory Album.fromJson(Map<String, Object?> json){
    final int albumIdm = json['albumIdm'] as int;
    final int id = json['id'] as int;
    final String title = json['title'] as String;
    final String url = json['url'] as String;
    final String thumbnailUrl = json['thumbnailUrl'] as String;
    return Album(albumIdm: albumIdm, id: id, title: title, url: url, thumbnailUrl: thumbnailUrl);
  }
}
