
///
/// Wrapper class to expose Future states in a clean way
///
class AsyncWrapper<T> {

  final T? data;    // Expected data type on async completion
  final Object? error;
  final bool isLoading;
  final StackTrace? stackTrace;

  AsyncWrapper._({
    this.data,
    this.error,
    required this.isLoading,
    this.stackTrace
  });

  factory AsyncWrapper.loading() => AsyncWrapper._(isLoading: true);

  factory AsyncWrapper.data(T value) => AsyncWrapper._(data: value, isLoading: false);

  factory AsyncWrapper.error(Object error, [StackTrace? stackTrace]) =>
      AsyncWrapper._(error: error, isLoading: false);

  // Assign callbacks depending on the state of the async operation
  R when<R>({
    required R Function() loading,
    required R Function(T data) data,
    required R Function(Object error, StackTrace? stackTrace) error,
  }) {
    if (isLoading) return loading();
    if (this.error != null) return error(this.error!, stackTrace);
    return data(this.data as T);
  }

}