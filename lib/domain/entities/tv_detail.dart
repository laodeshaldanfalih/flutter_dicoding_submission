import 'package:ditonton/domain/entities/genre.dart';
import 'package:equatable/equatable.dart';

class TvDetail extends Equatable {
  TvDetail({
    required this.adult,
    required this.backdropPath,
    required this.genres,
    required this.id,
    required this.name,
    required this.numberOfEpisodes,
    required this.numberOfSeasons,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    // required this.seasons,
    required this.tagline,
    required this.voteAverage,
    required this.voteCount,
  });

  bool? adult;
  String? backdropPath;
  List<dynamic>? createdBy;
  List<int>? episodeRunTime;
  DateTime? firstAirDate;
  List<Genre> genres;
  String? homepage;
  int id;
  bool? inProduction;
  List<String>? languages;
  DateTime? lastAirDate;
  String name;
  dynamic nextEpisodeToAir;
  int numberOfEpisodes;
  int numberOfSeasons;
  List<String>? originCountry;
  String? originalLanguage;
  String? originalName;
  String overview;
  double popularity;
  String posterPath;
  List<dynamic>? productionCompanies;
  // List<Season> seasons;
  String? status;
  String tagline;
  String? type;
  double voteAverage;
  int? voteCount;
  @override
  // TODO: implement props
  List<Object?> get props => [
        adult,
        backdropPath,
        genres,
        id,
        name,
        numberOfEpisodes,
        numberOfSeasons,
        overview,
        popularity,
        posterPath,
        // seasons,
        tagline,
        voteAverage,
        voteCount,
      ];
}
