//  Lectures for data types in Dart */
/*1. basic function of dart 

//1.void: return이 없음.
void sayHello_void(String name) {
  print("Hello $name, nice to meet you");
}

//2.String자료형 함수: return이 문자열형임.
String sayHello_string(String name) {
  return "Hello $name, nice to meet you";
}

//3.fat arrow syntax: 곧바로 return 하는 것.(간단한 것은 이거 쓰는게 좋다.)
String sayHello_arrow(String name) => "Hello $name, nice to meet you";
num plus(num a, num b) => a + b;
*/

/*2.Named Parameters: 함수 인자 입력시 함수 순서 정의와 상관없이 입력가능.
//1. 기존 자바 문법이랑 동일한 파라미터(함수 사용시 순서에 맞게 입력)
import 'dart:html';

String sayHelloOld(String name, int age, String country) {
  return "Hello $name,you are $age, and you come from $country";
}

//2.프로그래머가 순서에 상관없이 키:value로 간단하게 삽입 가능.
//다만, 프로그래머가 파라미터를 삽입 안할때도 있어서 null safety가 작동.
*/

/*3.Positional Parameters: 자주사용 안함. 2번만 자주 씀.
//[parameter]:은 optional parameter를 뜻함. 하지만 이러면 null 가능하므로 ? 붙일것.
String sayHello(String name, int age, [String? country = 'korea']) =>
    "Hello $name,you are $age, and you come from $country";
*/
/*4.QQ Operator(??):Null이면 우측실행
String capitalizeName(String? name) =>
    //name != null ? name.toUpperCase() : 'ANON'; //?:조건연산자 사용시
    name?.toUpperCase() ?? 'null이므로 우측이 return'; //??: 왼쪽이 NULL이면 오른쪽, 아니면 왼쪽
 */

/*5.Typedef(object)://자료형을 정의 해준다. */
typedef ListOfIns = List<int>;
//List<int> 자료형을 리턴하는 함수임.
ListOfIns reverseListOfNumbers(ListOfIns list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfor = Map<String, String>;
String sayHi(UserInfor userInfo) {
  //sting key: string value를 받아서 객체에 전달.
  return "Hi, ${userInfo['name']}";
}

void main() {
  /*1. basic function of dart 
  print(sayHello_string('changuk'));
  print(plus(2.1, 3));
  */
  /*2.Named Parameters
  // 1. 기존 함수 사용 방식: 가독성 저하 및 순서 암기 필수(not clean code)
  print(sayHelloOld('changuk', 26, 'korea'));

  // 2. 다트의 named prameter적용 방식
  print(sayHelloNew(
    age: 12,
    name: 'changuk',
    country: 'korea',
  ));
  */
  /*3.Positional Parameters
  print(sayHello('changuk', 25));
  */
  /*4.QQ Operator 
  print(capitalizeName('changuk'));
  print(capitalizeName(null)); //null값일 경우에 원하는 값을 나오게 하기 위함
  */
  /*5.Typedef */

  print(reverseListOfNumbers([1, 2, 3]));
  print(sayHi({'name': 'changuk'})); //sting key: string value
}
