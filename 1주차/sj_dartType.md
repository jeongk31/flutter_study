## Dart 변수에는 int, double, String, bool 이 있다. 더 나아가서는 var, dynamic, late, const, final 이 있다.

![이미지 5](https://i.ibb.co/Km0ysFX/image5.jpg)

### int,double,String,bool 변수타입

#### Advanced String

- String끼리 + 나 $ 를 이용하여 합칠 수 있다.

![이미지 4](https://i.ibb.co/VMdYj6N/image4.jpg)

#### string 더하기

- String 초기화는 ' 혹은 " 를 쓰면된다. 아무거나 써도 괜찮다.
  - 예시:
    ```dart
    String a = 'hi';
    String b = "hihi";
    ```

- 다른 변수타입도 String에 합칠 수 있다.
![이미지 3](https://i.ibb.co/BcSz0Dk/image3.jpg)

  - `$`를 이용하여 다른변수타입을 String에 합치기
    - 이렇게 되면 `you can interpolate 10` 이 출력된다.!

- 중간에 `\n`을 넣으면 그 부분에서 줄바꿈이 일어나게 된다.
![이미지 2](https://i.ibb.co/Fbm9WZS/image2.jpg)

  - `\n`을 통한 줄바꿈

- `\` 혹은 `'` 를 출력하고 싶으면 앞에다가 `\`를 붙이기만 하면 된다.
  - 예시:
    ```dart
    String a = "hi this is \\ 'me'";
    ```

### Complex data types

1. **var** 그리고 **dynamic**
   - 둘의 공통점을 보자면 둘다 변수를 설정하고 나서 아무 변수타입이나 할당해줄 수 있다.
   - 차이점은 **var**은 초기화 한 변수타입을 유지해야 하고 **dynamic**은 완전히 자유롭게 바꿀 수 있다.
     - 예시:
       ```dart
       var a = ' hi ';   // 이러면 이제 a라는 변수는 String 타입이다.
       dynamic b = 'hi'; // 이래도 b 는 int나 다른 변수타입으로 다시 초기화 할 수 있다.
       ```

2. **late** 데이타 타입
   - 이는 선언 후에 초기화 될 수 있는 타입이다. non-nullable(null불가능) 이다.
     - 예시:
       ```dart
       late String a;
       a = "hi";   // 초기화는 선언 이후에 하는 것을 의미한다.
       ```

3. **const** 그리고 **final** 데이타 타입
   - 이들은 선언 후에 초기화 된 것이 바뀔 수 없다.
   - 공통점은 둘 다 선언된 것을 고정시켜주는 것이다.
   - 차이점은...
     - **const** 변수는 compile 동안에 선언되어야한다. 즉 running 전에 선언되어야 하는 것이다.
     - **final**은 반대로 running 이후에 선언되어도 가능.
       - 예시:
         ```dart
         final String name = "john";
         // name = "Tim";  <<--- Error!!
         ```

     - **const** 에러
     ![이미지 1](https://i.ibb.co/m8d1hyc/image1.jpg)

       - 이를 보면 `DateTime.now()`라는 함수는 러닝할 때의 시간을 리턴하는 함수이므로 러닝 전에 선언되어야 하는 const를 사용하기엔 부적절하다. 이럴 땐 **final**로 바꿔주면 된다.
