import 'story.dart';
class StoryBrain{
  int questionNo = 0;
  List<Story>_storyData=[
  Story(
     storyTitle:
     'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
     choice1: 'I\'ll hop in. Thanks for the help!',
     choice2: 'Better ask him if he\'s a murderer first.'),
 Story(
     storyTitle: 'He nods slowly, unphased by the question.',
     choice1: 'At least he\'s honest. I\'ll climb in.',
     choice2: 'Wait, I know how to change a tire.'),
 Story(
     storyTitle:
     'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
     choice1: 'I love Elton John! Hand him the cassette tape.',
     choice2: 'It\'s him or me! You take the knife and stab him.'),
 Story(
     storyTitle:
     'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
     choice1: 'Restart',
     choice2: ''),
 Story(
     storyTitle:
     'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
     choice1: 'Restart',
     choice2: ''),
 Story(
     storyTitle:
     'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
     choice1: 'Restart',
     choice2: ''),
  Story(
     storyTitle:
     'You are an Smart',
     choice1: ' ',
     choice2: ' ')
  ];
  void getQuestionNo()
{
  if(questionNo<_storyData.length-1){
    questionNo++;
  }
}
  String getTitle()  {
    return _storyData[questionNo].storytitle;
}
void nextStory(int userChoice) {
     if(userChoice==1 && questionNo==0)
     {
       questionNo=2;
     }
     else if(userChoice==1 && questionNo==2)
     {
       questionNo=5;
     }
     else if(userChoice==2 && questionNo==0)
     {
       questionNo=1;
     }
     else if(userChoice==1 && questionNo==1)
     {
       questionNo=2;
     }
     else if(userChoice==2 && questionNo==1)
     {
       questionNo=3;
     }
     else if(userChoice==2 && questionNo==2)
     {
       questionNo=4;
     }
     else if(userChoice==1&&(questionNo==3||questionNo==4||questionNo==5))
     {
       questionNo=0;
     }
     else if(userChoice==2&&(questionNo==3||questionNo==4||questionNo==5))
     {
       questionNo=6;
     }
     else if(userChoice==1&&(questionNo==6))
     {
       questionNo=0;
     }
  }
  String getChoice1()  {
    return _storyData[questionNo].choic1;
}
  String getChoice2()  {
    return _storyData[questionNo].choic2;
}
}
