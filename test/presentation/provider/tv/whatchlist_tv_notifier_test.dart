import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/usecases/tv/get_watchlist_tvs.dart';
import 'package:ditonton/presentation/provider/tv/whatchlist_tv_notifier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../dummy_data/dummy_objects.dart';
import 'whatchlist_tv_notifier_test.mocks.dart';

@GenerateMocks([GetWatchListTvs])
void main() {
  late WatchlistTvNotifier provider;
  late MockGetWatchListTvs mockGetWatchListTvs;
  late int listenerCallCount;

  setUp(() {
    listenerCallCount = 0;
    mockGetWatchListTvs = MockGetWatchListTvs();
    provider = WatchlistTvNotifier(getWatchlistTvs: mockGetWatchListTvs)
      ..addListener(() {
        listenerCallCount++;
      });
  });

  test('should change Tvs data when data is gotten successfully', () async {
    // arrange
    when(mockGetWatchListTvs.execute())
        .thenAnswer((_) async => Right([testWatchlistTv]));
    // act
    await provider.fetchWatchlisTvs();
    // assert
    expect(provider.watchlistState, RequestState.Loaded);
    expect(provider.watchlistTvs, [testWatchlistTv]);
    expect(listenerCallCount, 2);
  });

  test('should return error when data is unsuccessful', () async {
    // arrange
    when(mockGetWatchListTvs.execute())
        .thenAnswer((_) async => Left(DatabaseFailure("Can't get data")));
    // act
    await provider.fetchWatchlisTvs();
    // assert
    expect(provider.watchlistState, RequestState.Error);
    expect(provider.message, "Can't get data");
    expect(listenerCallCount, 2);
  });
}
