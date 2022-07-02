import 'dart:async';

typedef void OnData<T>(T data);

extension StreamTypeExtension on Stream<dynamic> {
  _StreamTypeListener splitTypes(
          {Function? onError, void onDone()?, bool? cancelOnError}) =>
      _StreamTypeListener(this,
          onError: onError, onDone: onDone, cancelOnError: cancelOnError);
}

class _StreamTypeListener {
  _StreamTypeListener(Stream<dynamic> stream,
      {Function? onError, void onDone()?, bool? cancelOnError})
      : _stream = stream {
    _stream.listen((event) {
      final eventType = event.runtimeType;
      for (var type in _typeListeners.keys) {
        if (eventType == type) {
          _typeListeners[type]!(event);
          return;
        }
      }
    }, onError: onError, onDone: onDone, cancelOnError: cancelOnError);
  }

  final Stream<dynamic> _stream;
  final _typeListeners = <Type, OnData>{};

  void listenType<T>(OnData<T> onData) {
    _typeListeners[T] = onData as OnData;
  }
}
