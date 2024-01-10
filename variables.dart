void main() {
  print("hello world");
  /*dart의 5가지 변수

  1.var,dynamic:초기화 하지 않은 변수는 어떤 타입으로 써도 상관없다.
  (ex: var name; 또는 dynamic name; name=12; name=ture; )
  var name;
  if (name is String) {
    name.length;
  }
  if (name is int) {
    name.toString();
  }
  name = '213';
  int nameInt = int.parse(name); //string을 정수형으로 변경함.
  print(nameInt += 3);  */

  /*2. ?변수 (Nullable Variables): 다트의 변수는 기본적으로 null참조 방지 기능을 함.
  String changuk1 = 'changuk'; //
  changuk1 = null; //->dart는 null safety가 작동하여 null이면 안되는 경우 자동으로 알려줌.
  String? changuk2 = 'changuk'; //이러면 null로 써도 된다.
  changuk2 = null; //타입 옆에 '?'이라고 명시 해주면 null로 써도 된다.
  changuk2.length; //changuk2는 null타입이므로 string 메소드는 에러표시
  if (changuk2 != null) {
    //이상황은 무조건 null이 아닌경우이므로 safety는 에러처리 안함.
    //따라서 run하기전에 null참조를 미연에 방지 하게 해버림.
    changuk2.isNotEmpty;
  }
  //위에는 너무 길다. 따라서 밑과 같이 수정 가능
  changuk2?.isNotEmpty; //변수가 null이 아니면 해당 메소드 실행가능.
  */
  /*3. final변수: const와 같음. 수정 불가능+이름 같아도 안됨
  final name = "changuk1";
  name = "changuk1"; //-> 이러면 error
  final String name2 = "changuk2"; //구체적으로 어떤 타입인지 써도 된다
  name2 = "changuk2";
  */
  /*4. late변수: 어떤 데이터가 들어갈지 모를때 일단 선언하는 용도
  // 선언만 하고 추후 나중에 초기화-> api같은 거 다룰때 씀(따라서 보통 final이랑 같이쓴다.)
  late final String name;
  name = 'cjamgi'; //추후 초기화 가능
  name = 12123; //-> final이니까 에러
  */

  /*5. const변수: compile time constant의 개념.     js의 const랑 다름.
    이미 알고 있는 값에 한정해서 처리. ex: api_key,max_allowed_price
    쓰면 안된는 경우: api로부터 값을 받거나,사용자 입력값이면 안됨!!
  const API_KEY = '21321dsafsaf';
  const max_allowed_price = 123123;
    */
  /*6. int,double,String 등등 java와 비슷
  double notInt = 123.3;
  */
}
