import 'package:dartz/dartz.dart';

import 'beer_failure.dart';

class BeerRepositoryResult<T> {
  final Either<BeerFailure, T> value;
  final BeerRepositoryMode mode;
  final bool queuedTaskFailed;

  BeerRepositoryResult(this.value, this.mode, this.queuedTaskFailed);
}

enum BeerRepositoryMode { ONLINE, OFFLINE, UNSET }
