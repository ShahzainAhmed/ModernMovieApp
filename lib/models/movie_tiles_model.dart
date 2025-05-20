import 'package:modern_movie_app/resources/app_assets.dart';

class MovieTilesModel {
  final String title;
  final String duration;
  final String image;
  final String genre;
  final String description;
  final String yearOfRelease;

  MovieTilesModel({
    required this.title,
    required this.image,
    required this.duration,
    required this.genre,
    required this.description,
    required this.yearOfRelease,
  });
}

List movieTileList = [
  MovieTilesModel(
    title: "John Wick Chapter 4",
    image: AppAssets.kPicture1,
    duration: "2h 49m",
    genre: "Action, Thriller",
    description:
        "John Wick uncovers a way to defeat the High Table, but must face powerful new enemies and former allies as he fights for freedom in a brutal world of assassins.",
    yearOfRelease: "2023",
  ),
  MovieTilesModel(
    title: "Avatar: The Last Airbender",
    image: AppAssets.kPicture2,
    duration: "2h 30m",
    genre: "Fantasy, Adventure",
    description:
        "Aang, the last Airbender and destined Avatar, must master all four elements and bring balance to a world torn apart by the ruthless Fire Nation.",
    yearOfRelease: "2024",
  ),
  MovieTilesModel(
    title: "The School for Good and Evil",
    image: AppAssets.kPicture3,
    duration: "2h 10m",
    genre: "Fantasy, Drama",
    description:
        "Two best friends are swept into a magical school where they’re trained to become fairy tale heroes and villains, challenging their bond and beliefs.",
    yearOfRelease: "2022",
  ),
  MovieTilesModel(
    title: "Avatar: The Way of Water",
    image: AppAssets.kPicture4,
    duration: "2h 30m",
    genre: "Science Fiction, Adventure",
    description:
        "Jake Sully and his family explore the oceanic regions of Pandora as new threats emerge, forcing them into a battle for survival and unity.",
    yearOfRelease: "2022",
  ),
  MovieTilesModel(
    title: "Superman",
    image: AppAssets.kPicture5,
    duration: "2h 30m",
    genre: "Superhero, Action",
    description:
        "Clark Kent embraces his identity as Superman and uses his powers to defend Earth, standing as a symbol of hope in a world filled with danger.",
    yearOfRelease: "2025",
  ),
];
