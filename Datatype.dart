void main() {
  //  Lectures for data types in Dart */
  /*1. basic dart 
  //dart는 모든게 다 class로 되어있다, string,bool 등.
  //따라서 각각의 데이터 타입에는 사용가능한 메소드들이 많다.
  //(+int,double는 num을 상속 받음)
  String name = "changuk";
  bool alive = true;
  int age = 12;
  double money = 69.99;
  num x = 12;
  x = 1.1; //num 데이터형은 정수,실수 모두 가능
  */
  /*2. List[]: 대괄호
  var numbers1 = [1, 2, 3, 4]; //정수형 리스트1
  List<int> numbers2 = [1, 2, 3, 4]; //정수형 리스트2
  numbers1.add(1);
  numbers1.first; //리스트의 첫번째 요소
  numbers1.last; //리스트의 마지막 요소
  numbers1.contains(1); //리스트에 해당 하는게 있는지=>bool값
  //다트의 리스트는 collection if, collection for을 지원한다.
  //1. collection if: 리스트안에 if문을 쓰고 참이면 "해당 위치"에 "원하는 값" 추가 가능.
  //사용 예: 메뉴,네비게이션 bar에서 user가 로그인을 했는지 안했는지 나타내는 버튼 추가 가능.
  var giveMeFive = true;
  var numbers3 = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ];
  print(numbers3);
  //2.0 String interpolation($)은 text에 변수를 추가하는 방법이다.
  var name = '창욱';
  var age = 24;
  var greeting = 'Hi guys, My name is $name and I\'m ${age + 2}. ';
  //다트는 ${변수}만 추가해서 문자열에 변수를 추가하면 되니 엄청 쉽다.

  //2.1  collection for: collection if문과 같이 for문으로 리스트에 넣음.
  //사용 예: 리스트에 넣는 반복작업을 줄여준다.
  var oldFriends = ['changuk', 'sunwoo']; ////문자형 리스트
  var newFriends = [
    'sungjoo',
    'enuji',
    'hwimo',
    //새 리스트에 같은 형태의 새로운 요소들을 넣음.
    for (var friend in oldFriends) "★ $friend ",
  ];
  print(newFriends);
  */

  /* 3. Map(key:value) :js의 object, 파이썬의 dictionary와 같다.
  //1.var 형태로 씀-> 암거나 해도 상관x (+밑에는 string:obeject)
  var player = {
    'name': 'changuk',
    'age': 12,
    'region': 'seoul',
  };
  //2.Map키워드를 통해 자료형을 명시적으로 선언할 수 도 있다.
  Map<int, bool> choose = {
    1: true,
    2: false,
    3: true,
  };
  //3. 복잡한 형태의 MAP사용
  Map<List<int>, bool> complexMap = {
    [1, 2, 3, 4]: true,
  };
  */
  /*4. Sets{}: 각각의 요소들은 유니크하다 
  //만약 사용하고자 하는 값들이 겹치면 안되는 경우는 sets 아니면 list를 쓰면된다.
  var numbers = {1, 2, 3, 4};
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  //List와 다르게위에 1을 많이 추가해도 출력은 " {1,2,3,4} "가 나옴.
  print(numbers);
  */
}
