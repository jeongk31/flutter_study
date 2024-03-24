
# Collections

Dart에는 리스트(list), 세트(set), 그리고 맵(map) 컬렉션에 대한 내장 지원이 있습니다. 컬렉션에 포함된 유형을 구성하는 방법에 대해 자세히 알아보려면 [제네릭스](https://dart.dev/guides/language/language-tour#generics)를 확인하세요.

## Lists

거의 모든 프로그래밍 언어에서 가장 일반적인 컬렉션은 배열(array)이거나 객체의 순서가 정해진 그룹입니다. Dart에서 배열은 List 객체이므로 대부분의 경우 사람들은 그냥 리스트라고 부릅니다.

Dart 리스트 리터럴은 대괄호([])로 묶인 콤마로 구분된 표현식 또는 값의 목록으로 나타냅니다. 다음은 간단한 Dart 리스트입니다:

```dart
var list = [1, 2, 3];
참고: Dart는 list가 List<int> 유형으로 생각함. 이 리스트에 정수가 아닌 객체를 추가하려고 하면 분석기 또는 런타임이 오류를 발생.
````

-Dart 컬렉션 리터럴의 마지막 항목 뒤에 쉼표를 추가할 수 있습니다. 이러한 후행 쉼표는 컬렉션에 영향을 주지 않지만 복사 및 붙여넣기 오류를 방지하는 데 도움이 될 수 있습니다.
```dart
var list = [
  'Car',
  'Boat',
  'Plane',
];
```
리스트는 0부터 시작하는 인덱싱을 사용합니다. 0은 첫 번째 값의 인덱스이며 list.length - 1은 마지막 값의 인덱스입니다. .length 속성을 사용하여 리스트의 길이를 얻고 첨자 연산자 ([])를 사용하여 리스트의 값에 액세스 할 수 있습니다.

```dart
var list = [1, 2, 3];
assert(list.length == 3);
assert(list[1] == 2);

list[1] = 1;
assert(list[1] == 1);


컴파일 타임 상수인 리스트를 만들려면 리스트 리터럴 앞에 const를 추가.
var constantList = const [1, 2, 3]; //error
```

## Sets

Dart의 Sets는 고유 항목의 정렬되지 않은 컬렉션입니다.
```dart
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

빈 집합(Sets)를 만드려면?
var names = <String>{};
// Set<String> names = {}; // This works, too.


var elements = <String>{}; //// var names = {}; 은 map 생성이지 set 생성이 아니다.
elements.add('fluorine');
elements.addAll(halogens);
이렇게 add(), addAll() method를 통해 추가할 수 있다.

final constantSet = const {
  'fluorine',
  }//이렇게 하면 추가를 더이상 할 수 없음 (const때문)
```

## Maps
일반적으로 맵은 키(key)와 값(value)을 연관시키는 객체입니다. 키와 값은 모두 어떤 종류의 객체든 될 수 있습니다. 각 키는 한 번만 나타나지만 동일한 값은 여러 번 사용할 수 있습니다. 

```dart
var gifts = {
  // 키:    값
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
}; //gifts는 Map<String, String>


Map 생성자를 사용하여 동일한 객체를 생성할 수도 있습니다:
var gifts = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var nobleGases = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
```
기존 맵에 새 키-값 쌍을 추가하려면 대괄호 할당 연산자 ([]=)를 사용하세요:
```dart
var gifts = {'first': 'partridge'};
gifts['fourth'] = 'calling birds'; // 키-값 쌍 추가

맵의 키-값 쌍 수를 얻으려면 .length를 사용하세요:
var gifts = {'first': 'partridge'};
gifts['fourth'] = 'calling birds';
assert(gifts.length == 2);

```
대괄호 연산자 ([])를 사용하여 맵에서 값을 검색할 수 있습니다:
```dart
var gifts = {'first': 'partridge'};
assert(gifts['first'] == 'partridge');

맵에 없는 키를 찾으면 null이 반환됩니다:
```


## Operators
### Spread operators
Dart는 리스트, 맵 및 세트 리터럴에서 스프레드 연산자 (...)와 널 방지 스프레드 연산자 (...?)를 지원합니다. 스프레드 연산자는 컬렉션에 여러 값을 삽입하는 간결한 방법을 제공합니다.

예를 들어, 리스트의 모든 값을 다른 리스트에 삽입하기 위해 스프레드 연산자 (...)를 사용할 수 있습니다:


```dart
var list = [1, 2, 3];
var list2 = [0, ...list];

null일 방지하기위해 
var list2 = [0, ...?list];로도 쓰입니다
```

### Control-flow operators
Dart는 리스트, 맵 및 세트 리터럴에서 사용하는 컬렉션 if와 컬렉션 for를 제공합니다. 이러한 연산자를 사용하여 조건부(if) 및 반복(for)을 사용하여 컬렉션을 빌드할 수 있습니다.
```dart
다음은 컬렉션if를 사용하여 리스트를 생성하는 예.
var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

if-case도 지원
var nav = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];

for도 지원
var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
```



