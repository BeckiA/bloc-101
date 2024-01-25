Stream<int> streamCounter(int max) async* {
  for (int i = 0; i < max; i++) {
    yield i; //This pushs the data inside the stream to get consumed
  }
}

// This will consume the stream which get forwarded from the Stream Counter!
Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;
  await for (int val in stream) {
    sum += val;
  }
  return sum;
}

void main(List<String> args) async {
  Stream<int> stream = streamCounter(10);
  int sum = await sumStream(stream);
  print("The Sum inside the stream : $sum");
}
