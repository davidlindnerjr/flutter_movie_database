class Movie {
  final int id, year, numOfRatings, criticsReview, metaScoreRating;
  final double rating;
  final List<String> genre;
  final String plot, title, poster, backdrop;
  final List<Map> cast;

  Movie(
    this.id,
    this.year,
    this.numOfRatings,
    this.criticsReview,
    this.metaScoreRating,
    this.rating,
    this.genre,
    this.plot,
    this.title,
    this.poster,
    this.backdrop,
    this.cast,
  );
}

List<Movie> movies = [];
