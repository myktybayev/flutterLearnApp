import 'package:flutter/material.dart';
import 'package:flutter_learn_app/features/quiz/model/quiz.dart';
import 'package:flutter_learn_app/features/theory/screens/theory_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 55, 50, 80),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Quiz App',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            _questionWidget(),
            _answerList(),
            _nextButton()
          ],
        ),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Question ${currentQuestionIndex + 1}/${questionList.length.toString()}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(15)),
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answerList
          .map((e) => _answerButton(e))
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: isSelected ? Colors.white : Colors.black,
          backgroundColor:
              isSelected ? Colors.orangeAccent : Colors.grey.shade500,
          shape: const StadiumBorder(),
        ),
        onPressed: (){
          setState(() {
            if(selectedAnswer==answer){
              selectedAnswer = null;
            }else{
              if(selectedAnswer == null){
                if(answer.isCorrect){
                  score++;
                }
                selectedAnswer = answer;
              }
            }
          });
        },
        child: Text(answer.answerText),
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if(currentQuestionIndex == questionList.length - 1){
      isLastQuestion = true;
    }
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.5,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue.shade900,
          shape: const StadiumBorder()
        ),
        onPressed: (){
          if(isLastQuestion){
            showDialog(context: context, builder: (_) => _showScore());
          }else{
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex ++;
            });
          }
        },
        child: const Text('Next'),
      ),
    );
  }
  
  _showScore() {
    bool isPassed = false;
    if(score >= questionList.length *0.6){
      isPassed = true;
    }
    String title = isPassed ? 'Passed' : 'Failed';
    return AlertDialog(
      title: Text(
        '$title | Score is $score',
        style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
      ),
      content: ButtonBar(alignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: (){
          Navigator.pop(context);
          setState(() {
            currentQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        }, child: const Text('Restart')),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const TheoryScreen()));
        }, child: const Text('Back'))
      ],
      ) 
    );
  }
}
