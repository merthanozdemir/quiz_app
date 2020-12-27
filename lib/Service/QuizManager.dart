import 'Question.dart';
import 'Option.dart';

class QuizManager {
  QuizManager() {
    _questions.add(Question('Dünya yüzeyindeki en büyük ada hangisidir? ', [
      Option('Grönland', 10),
      Option('Borneo', 0),
      Option('Yeni Gine', 0),
    ]));

    _questions.add(Question('Eğer dünyada tek bir ülke olsaydı başkenti İstanbul olurdu sözü kime aittir?', [
      Option('Napolyon Bonapart', 10),
      Option('Adolf Hitler', 0),
      Option('Fatih Sultan Mehmet', 0),

    ]));
    _questions.add(Question('New York’taki Çağdaş Sanat Müzesinde bulunan “Belleğin Azmi” adlı bu ünlü tablo hangi ünlü ressama aittir?', [
      Option('Salvador Dali', 10),
      Option('Van Gogh', 0),
      Option('Pablo Picasso', 0),

    ]));

    _questions.add(Question('Rus devrimi öncesindeki Rus işçi sınıfının fakirliğini anlatan ünlü roman Ana kimin eseridir?', [
      Option('Nikolay Vasilyeviç Gogol', 0),
      Option('İvan Gonçarov', 0),
      Option('Maksim Gorki', 10),

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