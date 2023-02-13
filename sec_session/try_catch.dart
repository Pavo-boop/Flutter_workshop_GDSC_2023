

void main(List<String> args) {
  int? x = 4;
  int? a = 0;
  int? result;
    if(result == int)
  {
    print(result);
  }else{
    throw Exception('maybe result = non-integer value or empty');
  }
  try{
    print(result);
  } catch(e){
    print('there is an expeption');
  }
  return print('thank you');
  // طريقة عشان اخلي الايرور بدل ما يبوظلي البروجيكت، اخليه يطبعلي ان فيه مشكلة

  // try - catch - on - finally
  try {
    result = x ~/ a;
  } on UnsupportedError catch (error) {
    if(a  == 0){
      print('you cant divide by zero!: $error');
    }// هنا بحدد نوع الايرور دا لو جه المفروض الكومبايلر يعمل اية
  } finally {
    print('reach to finally code');
  }

  // FormatException
  try {
    if (x != 10) {
      throw FormatException('Value must be not equal 10 ');
    }
  } on FormatException catch (error) {
    print('FormatException: $error');
  }
  // Making custom Exception

  String ticketNumber = "342531231234";
  try {
    if (ticketNumber[0] != '1') {
      throw Exception("first number must be 3 ");
    } else if (ticketNumber.length != 12){
      throw new Exception("ticket number lenght must equal = 12");
    };
  } on CustomException catch (e) {
    print(e.errorString());
  } on StartWith1 catch (e) {
    print(e.errorMessage());
  }
  // function inside the custom exception
  try {
    StartWith1.testNumber(a);
    int divide = x ~/ a;
    if(x<a){
      throw Exception('value of x must be grater than a');
    }if(a == double){
      throw Exception('a musst to equal integer value');
    };
  } on StartWith1 catch (e) {
    print(e.errorMessage());
  }
}

class CustomException implements Exception {
  String errorString() => 'Error Custom Exception.';
}

class StartWith1 implements Exception {
  String errorMessage() => "The ticket number must start with 1.";

  static void testNumber(int number) {
    if (number == 0) {
      throw StartWith1();
    }
  }
}
