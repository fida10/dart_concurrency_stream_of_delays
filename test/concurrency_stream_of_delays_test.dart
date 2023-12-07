import 'package:concurrency_stream_of_delays/concurrency_stream_of_delays.dart';
import 'package:test/test.dart';

void main() {
  test('Stream emits integers with increasing delays', () async {
    var stopwatch = Stopwatch()..start();
    await for (var number in streamOfDelays()) {
      expect(number, inInclusiveRange(1, 5));
      expect(stopwatch.elapsedMilliseconds, greaterThanOrEqualTo(100 * number));
    }
    stopwatch.stop();
  });
}
