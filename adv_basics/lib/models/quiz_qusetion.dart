// dart file that containes question blue print
class QuizQuestion {
  const QuizQuestion(this.text, this.answers); //Constructor fun

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
    //List here is class and it has some constructor funs to create diff lists
    //of :-constructor fun creates a new list based on anodther list it copies the exesting list elements.Synatx:-List.of(name to store list elemts)
    //The new list which has shuffle will be shuffled and the old list remains same. The process of calling a constructor func and shuffle func is called chaining.
    // we took final shuffledList because we need to return a value but suffled func returns void. So, to get the value we have added final variable to List.of()
    //shuffled list is final we cannot assign new values to the final shuffledList it should remain the same.
    //By using the shuffle method new are not creating a list but we are mogifing the assigned list in memory.
  }
}
