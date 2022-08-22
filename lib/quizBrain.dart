import 'question.dart';

int _save = 0;

class QuizBrain {
  List<Question> _questionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
    Question(q: 'Some cats are actually allergic to humans', a: true),
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
  ];

  void nextQuestion() {
    if (_save < _questionBank.length - 1) {
      _save++;
    }
    print(_save);
    print(_questionBank.length);
  }

  String getQuestionsText() {
    return _questionBank[_save].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_save].questionAnswer;
  }
}
