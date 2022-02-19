import Cocoa

// class 클래스 vs struct 구조체 / enum 열거형



// class - 클래스
// 전통적인 oop 관점에서의 클래스
// 단일 상속
// (인스턴스/타입) 메소드
// (인스턴스/타입) 프로퍼티
// 참조 타입
// Apple 프레임워크의 대부분의 큰 뼈대는 모두 클래스로 구성



// struct - 구조체
// c언어 등의 구조체보다 다양한 기능
// 상속 불가
// (인스턴스/타입) 메소드
// (인스턴스/타입) 프로퍼티
// 값 타입
// swift의 대부분의 큰 뼈대는 모두 구조체로 구성



// enum - 열거형
// 다른 언어의 열거형과는 많이 다른 존재
// 상속 불가
// (인스턴스/타입) 메소드
// (인스턴스/타입) 연산 프로퍼티
// 값 타입
// Enumeration
// 유사한 종류의 여러 값을 유의미한 이름으로 한 곳에 모아 정의 - ex) 요일, 상태값, 월(Month) 등
// 열거형 자체가 하나의 데이터 타입. - 열거형의 case 하나하나 전부 하나의 유의미한 값으로 취급
// 선언 키워드 - enum



//               class            struct            enum

// type        reference          value             value

// subclassing     O                X                 X

// extension       O                O                 O




// struct(구조체)는 언제 사용?
// 연관된 몇몇의 값들을 모아서 하나의 데이터 타입으로 표현하고 싶을 때
// 다른 객체 또는 함수 등으로 전달될 때 참조가 아닌 복사를 원할 때
// 자신을 상속할 필요가 없거나, 자신이 다른 타입을 상속받을 필요가 없을 때
// Apple 프레임워크에서 프로그래밍을 할 때에는 주로 클래스를 많이 사용



// 값 타입 VS 참조 타입
// Value Vs Reference
// Value - 데이터를 전달할 때 값을 복사하여 전달
// Reference - 데이터를 전달할 때 값의 메모리 위치를 전달

struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance // 복사가 되서 값이 들어감.
secondStructInstance.property = 2

print("first struct instance property: \(firstStructInstance.property)") // 1
print("second struct instance property: \(secondStructInstance.property)")// 2

let firstClassReference = ReferenceType()
var secondClassReference = firstClassReference
secondClassReference.property = 2

print("first class reference: \(firstClassReference.property)") // 2
print("second class reference: \(secondClassReference.property)") // 2





struct SomeStruct {
    var someProperty: String = "Property"
}

var someStructInstance: SomeStruct = SomeStruct()

func someFunction(structInstance: SomeStruct) {
    var localVar: SomeStruct = structInstance
    localVar.someProperty = "ABC"
}

someFunction(structInstance: someStructInstance)
print(someStructInstance.someProperty)
// Property
// 복사가 되어 전달이 되서 안바뀜.





class SomeClass {
    var someProperty: String = "Property"
}

var someClassInstance: SomeClass = SomeClass()

func someFunction(classInstance: SomeClass) {
    var localVar: SomeClass = classInstance
    localVar.someProperty = "ABC"
}

someFunction(classInstance: someClassInstance)
print(someClassInstance.someProperty)
// ABC
// 참조 값이 전달되어서 바뀜.




// data types in swift

// public struct Int
// public struct Double
// public struct String
// public struct Dictionary<Key : Hashable, Value>
// public struct Array<Element>
// public struct Set<Element : Hashable>




// swift loves struct

// 스위프트는 구조체, 열거형 사용을 선호
// Apple 프레임워크는 대부분 클래스 사용
// Apple 프레임워크 사용시 구조체/클래스 선택은 우리의 몫
