# AutoHotkey Test
AutoHotkey 설치 방법 및 필수 문법을 테스트한 소스이다.  

### 1. AutoHotkey란?

AutoHotkey는 윈도우 응용 프로그램 및 매크로를 만드는 오픈 소스 소프트웨어이다. 사용자가 반복작업을 자동으로 할 수 있도록 도와주며 스크립트 언어로 작성한다.

▶ 특징 및 사용

- AutoHotkey 스크립트는 프로그램 실행, 문서 열기, 키보드 입력, 마우스 입력에 사용할 수 있다.
- 변수를 다루고 루프를 실행하고 창, 파일, 디렉터리를 조작할 수도 있다.
- 명령은 단축키로 실행할 수 있으며 특정 키를 활성화하거나 비활성화하고 재할당할 수 있다.
- ‘핫스트링’이라 불리는 자동으로 치환되는 문자열도 지원하여 축약어를 풀어쓰는데 사용할 수 있다.
- C와 같은 포인터를 통한 메모리 접근을 할 수 있다.
- 인터넷을 제어하거나 WinApi등을 쓸 수 있다.

### 2. AutoHotkey 설치하기

AutoHotkey는 무료로 제공되는 프로그램으로 해당 사이트([https://www.autohotkey.com/download/](https://www.autohotkey.com/download/))에서 다운받을 수 있다.  

<img src="/scan/AutoHotkey 설치1.png"  width="700" > <img src="/scan/AutoHotkey 설치2.png"  width="300" >  

AutoHotkey를 사용하기 위해서는 문법에 맞게 텍스트 에디터에서 명령어를 편집하여 저장하고 확장자 명을 “.ahk”로 저장한 뒤 실행하면 된다. 별도의 프로그램 없이 메모장에서 필요한 내용을 작성할 수도 있지만, 가능하면 별도의 에디터를 설치해서 편집하는 것이 더욱 편하다.  

### 3. 편집용 에디터 설치

편집용 툴은 다양하기에 개인이 익숙한 툴을 사용하면 된다. 필자의 경우는 Visual Studio Code로 예제를 진행할 것이다.

**1) SciTE4AutoHotkey**

SciTE4AutoHotkey는 AutoHotkey 전용 에디터 프로그램으로 해당 사이트([https://www.autohotkey.com/scite4ahk/](https://www.autohotkey.com/scite4ahk/))에서 다운받을 수 있다.  

<img src="/scan/SciTE4AutoHotkey1.png"  width="560" > <img src="/scan/SciTE4AutoHotkey2.png"  width="440" >  

**2) Visual Studio Code**

Visual Studio Code는 MS에서 Windows, macOS, 리눅스용으로 개발한 소스 코드 편집기이다. AutoHotkey Extensions을 제공하기에 코드 작성이 수월하다. Visual Studio Code는 해당 사이트([https://code.visualstudio.com/](https://code.visualstudio.com/))에서 다운받을 수 있다. Extension은 AutoHotkey Plus, Code Runner를 다운로드하면 된다.  

<img src="/scan/vs code.png"  width="560" > <img src="/scan/vs code ahk.png"  width="440" >  

다음으로 화면에서 F1을 눌러서 Open Setting(JSON)을 선택해 아래의 소스를 추가한다. 

```json
"code-runner.executorMap": {
        "ahk": "\"c:\\Program Files\\AutoHotkey\\AutoHotkey.exe\"",
    },
```

**3) Notepad++**

Notepad++는 범용 텍스트 에디터로 프로그래밍을 하거나 다양한 형태의 테스트 편집을 지원한다. 다만 AutoHotkey의 프로그램 문법을 직접적으로 제공하지는 않는다. Notepad++는 해당 사이트([https://notepad-plus-plus.org/downloads/](https://notepad-plus-plus.org/downloads/))에서 다운받을 수 있다.  

<img src="/scan/Notepad.png"  width="400" >  

### 4. 파일 생성 및 실행하기

파일 생성은 마우스 우측 클릭 후 새로만들기 → AutoHotkey Script를 클릭하면 .ahk 확장자 파일을 만들 수 있다. 생성된 파일의 소스를 수정하려면 마우스 우클릭 후 Edit을 진행하면 된다.

- SciTE4AutoHotkey : Edit Script
- Visual Studio Code : Edit with VS Code
- Notepad++ : Edit with Notepad++  

<img src="/scan/생성 및 실행1.png"  width="560" > <img src="/scan/생성 및 실행2.png"  width="440" >  

예시로 아래 코드를 작성하고 저장하자. ( `;` 는 AutoHotkey에서 주석을 의미)

```jsx
F1::  ;F1 버튼을 누를 경우 실행

MsgBox, Test ;Test라는 메세지 박스 출력

return ; 종료
```  

<img src="/scan/예시코드.png"  width="400" >   

▶ 한글이 깨지는 경우

만약에 한글이 깨진다면 Encoding 설정을 UTF-8로 변경하면 된다.

▶ Edit with VS Code가 안나올 경우

Visual Studio Code의 경우는 파일을 마우스 우클릭 했을 때 Edit with VS Code가 안나온다면 해당 링크([https://pineenergy.tistory.com/37](https://pineenergy.tistory.com/37))를 참고하여 수정을 진행한다.

▶ VScode에서 ahk 확장자 인식이 안되는 경우

VScode 창 상단에  Rescricted Mode라고 안내문구가 표시된 경우인데 이때는 해당 파일을 신뢰할 수 있는 공간으로 지정하면 된다. (지정하지 않을 경우 매번 Trust를 눌러주어야 함)

`Ctrl + Shift + P` 입력 → Manage Workspace Trust 입력 후 Add Folder로 해당 파일 경로 추가  

<img src="/scan/Add Folder.png"  width="600" >   

### 5. 디버깅 및 컴파일하기

AutoHotkey의 경우 작성한 스크립트를 디버깅 및 컴파일 할 수 있다.

**1) 디버깅**

디버깅 버튼을 클릭하고 디버깅을 할 수 있으며 중단점 또한 사용 가능하다.  

<img src="/scan/디버깅1.png"  width="500" >   <img src="/scan/디버깅2.png"  width="500" >   

**2) 컴파일**

해당 파일을 마우스 우클릭 후 Compile Script를 클릭하면 아래와 같이 실행파일이 생성된다.  

<img src="/scan/컴파일1.png"  width="300" >   <img src="/scan/컴파일2.png"  width="300" >   

실행파일을 실행하면 작업표시줄에 아래와 같이 아이콘이 표시되며 프로그램을 종료할 경우에는 아이콘에서 종료를 누르면 된다.  

<img src="/scan/실행파일1.png"  width="150" >   <img src="/scan/실행파일2.png"  width="270" >   


▶ 출처
https://hannamedia.tistory.com/56?category=827970  
https://tricks-office.com/autohotkey/  

