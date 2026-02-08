/*Create a class Movie with attributes title and rating.
 In main(), create a list of 4 movies.
 Print only the movies with a rating above 7.*/

void main() {

  List<Movie> movies = [
    Movie("Tom&Jerry", 8.8),
    Movie("Zotopia", 6.7),
    Movie("Sonic", 9.2),
    Movie("Alice in the wonderland", 5.2)
  ];

  print("Movies with a rating above 7:");
  for (var movie in movies) {
    if (movie.Rating > 7) {
      print("${movie.Title} - Rating: ${movie.Rating}");
    }
  }
}

class Movie {
  String Title;
  double Rating;
  Movie(this.Title, this.Rating);
}
