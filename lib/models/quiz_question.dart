class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    List<String> answersCopy = List.of(answers);
    answersCopy.shuffle();
    return answersCopy;
  }
}