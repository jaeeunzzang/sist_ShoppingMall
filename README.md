* **mainPage폴더에 있는 mainPage만 경로설정 /web/ 붙여서**         
  **나머지는 /web/shop/ ~~ 잡다한거 다 붙일필요없이**              
  **- img/cat.jpg**         
  **- action.do 이런식으로 통일**       
  
* * *
* **git status -> 현재 상태**    :+1:
* * *
* git init ->깃 저장소 만들기
* git branch ->현재 작업중인 branch 
->커밋이 저장될 곳
* git checkout 브랜치이름 ->branch 선택
* * *
* git add * ->전체를 커밋에 add
  + git add *.확장자명 -> 특정 확장자만 전부 add
* git add . ->전체를 커밋에 add (*랑 . 둘 중에 편한걸로 쓰기~)
* git commit -m "커밋메시지"  
  + "쌍따음표 '홀따옴표' 둘다 가능하구 닫아주기전까지 줄바꿈 같은거 하구싶은대루 할수있당" 
* * *
* git push origin HEAD
->현재 작업하고있는 branch를 원격저장소에 push한다.
**branch가 없으면 만들어준다**
* git push -u origin jaeeun
 ->원격저장소 정보 저장
* git branch --set-upstream-to=origin/Main [로컬브랜치]
 ->로컬브랜치가 원격저장소 Main을 트랙킹한다.
* * *
* git pull --rebase ->원격에서 최신코드 받아와서 **병합**
* git fetch->원격에서 최신코드 받아오기(refresh)
* git clone -b new_branch [url] ->특정 브랜치에서 코드 가져오기
* https://github.com/jaeeunzzang/sist_ShoppingMall.git->경로
* * *
* 
*  :wq 저장하고나가기 -> esc 한번 눌러서 편집모드 빠져나온다음에 써준다.
