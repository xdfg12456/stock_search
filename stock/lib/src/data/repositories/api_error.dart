import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part "api_error.freezed.dart";

@freezed
class APIError with _$APIError {
  const factory APIError.stockNotFoundError() = _stockNotFoundError;

  const factory APIError.internetSeverError() = _internetSeverError;

  const factory APIError.unknown() = _Unknown;
}

extension UserErrorAsync on APIError {
  AsyncValue<T> asASyncValue<T>() => when(
        stockNotFoundError: () => const AsyncValue.error("stockNotFoundError"),
        internetSeverError: () => const AsyncValue.error("internetSeverError"),
        unknown: () => const AsyncValue.error('Some error occurred'),
      );
}
