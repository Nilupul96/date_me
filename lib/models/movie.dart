class Movie {
  final String name;
  final String description;
  final double rating;
  final String image;
  final List<String> imageList;
  final List<String> tags;
  final String distance;
  final List<Cast> castList;

  Movie({
    required this.name,
    required this.description,
    required this.rating,
    required this.image,
    required this.imageList,
    required this.tags,
    required this.distance,
    required this.castList,
  });
}

class Cast {
  final String name;
  final String imageUrl;

  Cast({required this.name, required this.imageUrl});
}
