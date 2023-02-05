
void main(List<String> args) {
  // use map to convert every grade with A , B , C , D , F
  Map<String, int> grades =  {'Ahmed':75, 'Youssef': 82, 'Sherif': 90};

  Map<String, String> gradesWithLetters={} ;
  grades.forEach((name,grade)
  {
    if(grade>=90){
      gradesWithLetters[name]= 'A';
    }if (grade>=80){
      gradesWithLetters[name]= 'B';
    }if (grade>=70){
      gradesWithLetters[name]= 'C';
    }if (grade>=50){
      gradesWithLetters[name]= 'D';
    } else
      {gradesWithLetters[name]= 'F';}

  }
);
print(gradesWithLetters);
    // output should be {'Ahmed': 'C', 'Youssef': 'B', 'Sherif': 'A'}
}