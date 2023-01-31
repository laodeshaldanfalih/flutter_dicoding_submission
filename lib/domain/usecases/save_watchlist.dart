import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/domain/entities/movie_detail.dart';
import 'package:ditonton/domain/entities/tv_detail.dart';
import 'package:ditonton/domain/repositories/movie_repository.dart';
import 'package:ditonton/domain/repositories/tv_repository.dart';

class SaveWatchlist {
  final MovieRepository movieRepository;
  final TvRepository tvRepository;

  SaveWatchlist(this.movieRepository, this.tvRepository);

  Future<Either<Failure, String>> executeMovie(MovieDetail movie) {
    return movieRepository.saveWatchlist(movie);
  }

  Future<Either<Failure, String>> executeTv(TvDetail tv) {
    return tvRepository.saveWatchlist(tv);
  }
}
