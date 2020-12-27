import 'Question.dart';
import 'Option.dart';

class QuizManager2 {
  QuizManager2() {
    _questions.add(Question('1950 li yılların sonlarında tahılları yedikleri gerekçesiyle ülkesindeki tüm serçelerin öldürülmesini emreden ünlü dikdatör kimdir?', [
      Option('Josef Stalin', 0),
      Option('Mao Zedong', 10),
      Option('Adolf Hitler', 0),

    ]));

    _questions.add(Question('1972’de Apollo 17 uzay aracı mürettebatınca çekilen ve yerküreyi bütün olarak gösteren ünlü fotoğrafın adı nedir?', [
      Option('Mavi Bilye', 10),
      Option('Mavi Boncuk', 0),
      Option('Mavi Gezegen', 0),

    ]));
    _questions.add(Question('Aşağıdaki hangi ülkenin üç tane başkenti vardır?', [
      Option('Güney Afrika', 10),
      Option('Senagal', 0),
      Option('Venezuela', 0),

    ]));

    _questions.add(Question('Aşağıdakilerden Hangisi Dünya Sağlık Örgütünün Kısaltılmış İsmidir?', [
      Option('Who', 10),
      Option('Unicef', 0),
      Option('UHW', 0),

    ]));

    _questions.add(Question('Bir gün Kaç Saniyedir? ', [
      Option('86400', 10),
      Option('88600', 0),
      Option('86000', 0),

    ]));


    _questions.shuffle();
    for (var question in _questions) {
      question.options.shuffle();
    }
  }

  List<Question> _questions = [];
  int _score = 0;
  int currentQuestionId = 0;
  void nextQuestion(score) {

    if (currentQuestionId < _questions.length) {
      _score += score;
      currentQuestionId++;
    }
    print(currentQuestionId);
  }

  int getTotalScore() => _score;
  int getCurrentId() => currentQuestionId + 1;
  int totalQuestionNumber() => _questions.length;
  bool isFinished() {
    return currentQuestionId >= _questions.length;
  }

  Question getCurrentQuestion() {
    print('getCurrentQuestion $currentQuestionId');
    if (currentQuestionId < _questions.length) {
      return _questions[currentQuestionId];
    } else {
      return Question('', []);
    }
  }
}