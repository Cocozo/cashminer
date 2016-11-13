# cashminer

## 주의!
**이 프로젝트**는 고등학교 학생의 프로젝트입니다!!

## 개요
만들고자하는 프로젝트의 **목적**은 안드로이드 휴대폰에서 한떄 유행을 타고있던 *캐시 슬라이더* 를 **OSX**용으로 만들면 안될까의 생각을 하였고, 평소에도 사용하고 싶었던 *cocoa framework* 에 대해 배우고 익숙해지고자 이 프로젝트를 출발하였다.

## 소개
이 프로젝트는 **"잠금화면을 하면 돈을 번다"** 라는 모티브로 말그대로 잠금화면을 풀면 일정금액이 적립되며, 이를 이용하여 상품권과 같은 실제로 쓸수 있는 화폐로 바꾸어 주는 서비스이다.

## 사용언어
	class main{
    	pint("hello swift world")
    	var a : int = 10
    	var b = 10
    	print(a+b)
    }
스위프트를 주 언어로 사용할 예정이다.

## 현제상황

### 진행도
60~70% 기본기능 작동.

### 문제점
ViewController의 override된 *keyDown*메소드의 작동유뮤가 확인되지 않음.

	override func keyDown(theEvent : NSEvent) {
			
	NSNortificationCenter.defaultCenter().postNotificationName("com.pabix.EnterKeyDown")
	}

