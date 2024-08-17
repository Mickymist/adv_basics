class QuizQuestions {
  final String text;
  final List<String> answer;
  const QuizQuestions(this.text, this.answer);

  List<String> getShuffledAnswer() {
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }
}
