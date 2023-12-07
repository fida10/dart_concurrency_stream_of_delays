/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/concurrency_stream_of_delays_base.dart';

/*
Practice Question 3: Stream of Delays

Task:

Create a function streamOfDelays that emits a stream of integers (1 to 5) 
with each number delayed by an increasing duration (e.g., 100ms, 200ms, …).
*/

Stream<int> streamOfDelays() async* { //an asynchronous generator, returning a stream
  for (var i = 1; i <= 5; i++) { 
    await Future.delayed(Duration(milliseconds: 100 * i)); //awaiting asynchronously the completion of this future, which forces a wait of 100ms
    yield i; //returns i mutliple times
  }
}
