/* 7.1 Abstract 클래스: 다른 클래스가 상속할때 이 클래스안의 메소드를 재정의 해줘야함.
이렇게 함으로써, 메소드 명들을 미리 지정하여 메소드들을 헷갈리지 않게 관리하고,
각 메소드들을 받은 클래스들이 재정의 함으로써 알맞게 사용 가능하다. 
abstract class Human {
  walk();
}
 */
/* 6. Emnums 클래스 
// 타입을 따로 안지정해도 된다. enum 형의 객체 클래스인 Team 생성.
//이런식으로 지정하여 선택의 폭을 줄이고, 실수를 방지 한다.
enum Team { red, blue }

enum XPLevel { beginner, medium, pro }
 */

/* 5. ★★Casacade Notation 
class Player extends Human {
  String name;
  XPLevel xp; //enum 객체 클래스로 xp를 정의!!!!
  Team team;

  /*클래스의 생성자(setter로 자주 사용)*/
  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  //클래스 내부의 함수 정의.
  void sayHello() {
    print("Hi my name is $name and My level is $xp. Finally my team is $team");
  }

/* 7.2 Abstract 클래스의 메소드 정의*/
  void walk() {
    print('i am walking');
  }
}
*/

/* 8. ★★★★ DART의 상속★★★★★★★
// ★★부모클래스★★
class Human {
  final String nameParent;
  Human(this.nameParent); //★★(super 지시어로 전달 받을 값.)
  //클래스 내부의 함수 정의.
  void sayHello() {
    print("Hi my name is $nameParent");
  }
}

enum Team { blue, red }

// ★자식 클래스★
class Player extends Human {
  final Team team;
  Player({
    required this.team,
    required String name,
  })
  //: super(nameParent: name); //super는 상위 클래스의 생성자를 뜻함.
  //생성자를 통해 setting된 변수 name을 상위 클래스의 nameParent으로 전달.
  : super(name); //이런식으로 작성하는게 제일 편하긴 하다.

  //메소드 override: 상속 받은 클래스에서 함수 재정의
  @override
  void sayHello() {
    super.sayHello(); //부모 클래스의 메소드를 부르는 법
    print("and I play for $team\n"); //해당 메소드를 재정의 하는법(부모 메소드는 그대로고, 여기에서만 재정의임)
  }
}
*/
/*9. Mixin(with):생성자가 없는 클래스를 의미. 주로 특징들을 선언 할때 사용
이렇게 함으로써 상속 없이 메소드를 그냥 갖고 옴.(장점:메소드 재정의,super지시어 사용 안해도됨!) */
mixin Strong {
  final double strenghLevel = 1500.99;
}

mixin QuickRunner {
  void runQuick() {
    print('ruuuuuuuuuuun!');
  }
}

mixin Tall {
  final double height = 1.99;
}

enum Team { blue, red }

//with 지시어를 통해 Player는
class Player with Strong, QuickRunner, Tall {
  final Team team;
  Player({
    required this.team,
  });
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main() {
  /* 5. Casacade Notation(..):클래스 객체를 ..으로 대체해서 쓴다. 
  var changuk = Player(
      name: 'changuk', xp: 1200, team: 'red') //casadae operator 사용시 ';' 지워야함
    ..name = 'las' //..(클래스 객체를)):casacade operator
    ..xp = 120000 //';'은 맨마지막에만 쓴다.
    ..team = 'blue'
    ..sayHello(); //함수도 객체에서 실행 가능하다.
     */
  /* 6. Emnums : 네이밍 실수를 방지하기 위해 선택의 폭을 줄여서 그 중 선택(색,팀 등등에서 사용가능)
  var changuk = Player(name: 'changuk', xp: XPLevel.beginner, team: Team.blue) //
        ..name = 'las' //
        ..xp = XPLevel.pro
        ..team = Team.blue
        ..sayHello()
        ..walk();
  */
  /* 8. ★★★DART의 상속★★★★
  var player = Player(
    team: Team.red,
    name: 'changuk',
  );
  player.sayHello(); //부모 클래스의 메소드도 상속 받음.
  var human = Human('changuk');
  human.sayHello();
  */
  /* 9. minxin클래스*/
  var player = Player(
    team: Team.red,
  );
  player.runQuick(); //mixin 클래스에서 정의한 메소드를 그대로 사용가능하다.
  print('the heigt is ${player.height}'); //mixin 클래스에서 정의한 변수도 사용 가능하다.
}
