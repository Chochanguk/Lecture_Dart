// Lectures for classes in Dart */

class Player {
  /*class가 생성자에서 setting할 변수 설정!!
  /*1. 자바와 같이 설정가능하지만 late지시어를 두어 생성자 만드는 경우
  dart의 null safety를 고려하여 late 지시어를 앞에 둔다. 이는 효율x*/
  late final String name; //final로 설정하면 초기 이름을 바꾸지 못한다.
  late int x;
  /*클래스의 생성자(setter로 자주 사용)*/
  Player(String name, int x) {
    this.x = x;
    this.name = name;
  }*/

  /*2.dart의 생성자(setter역할)는 너무 편하게 만들 수 있다.
  //밑과 같이 단, 3줄이면 끝난다.(자료형 재정의 안하고 만듦.)
  final String name;
  int xp;
  Player(this.name, this.xp);
  */
  /*3.Named Constructor Parameters
  final String name, team;
  int xp, age;
  //required를 사용해서 null safety를 방지
  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });
  */
  /*4.Named Constructor:객체를 한class로 정의함.
  //앞에 정의한 class 변수들을 재초기화 시켜줌.
  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.name = name, //여기서 ":"을 함으로써 main의 bluePlayer객체를 초기화 하겠다는 뜻.
        this.age = age,
        this.xp = 0,
        this.team = 'blue';
  //
  Player.createRedPlayer(String name, int age)
      : this.name = name, //여기서 ":"을 함으로써 main의 redPlayer객체를 재초기화 하겠다는 뜻.
        this.age = age,
        this.xp = 0,
        this.team = 'blue';
*/
  /*4.1 주로 api 다루는 class라고 불리는: fromJson class 정의.*/
  final String name;
  int xp;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'], //:을 통해 객체를 한 클래스로 재정의 함.
        xp = playerJson['xp'],
        team = playerJson['team'];
  //클래스 내부의 함수 정의.
  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  /*3.Named Constructor Parameters
  var player1 = Player(
    name: '창욱',
    xp: 1500,
    team: 'red',
    age: 26,
  ); //Player 클래스의 객체 생성.(자바랑 다르게new 없어도 됨!!)
  player1.sayHello();
  var player2 = Player(
    name: '선우',
    xp: 2500,
    team: 'blue',
    age: 24,
  ); //Player 클래스의 객체 생성.(자바랑 다르게new 없어도 됨!!)
  player2.sayHello();
  */

  /*4.Named Constructor 
  //1. required로 객체의 변수들을 setting 하는 경우
  var bluePlayer = Player.createBluePlayer(
    name: 'changuk',
    age: 26,
  );
  //2. required가 없는 경우
  var redPlayer = Player.createRedPlayer('sunwoo', 21);
  */

  /*5.API를 예로 들면서 하는 Reacp */
  var apiData = [
    {
      "name": "changuk",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "lyn",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "dal",
      "team": "red",
      "xp": 0,
    },
  ];
  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
