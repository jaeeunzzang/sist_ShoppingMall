* **git status -> 현재 상태**    :+1:
* * *
* git init ->깃 저장소 만들기
* git branch ->현재 작업중인 branch 
->커밋이 저장될 곳
* git checkout 브랜치이름 ->branch 선택
* * *
* git add * ->전체를 커밋에 add
  + git add *.확장자명 -> 특정 확장자만 전부 add
* git commit -m "커밋메시지"  
* * *
* git push origin HEAD
->현재 작업하고있는 branch를 원격저장소에 push한다.
**branch가 없으면 만들어준다**
* git push -u origin jaeeun
 ->원격저장소 정보 저장
* * *
* git pull --rebase ->원격에서 최신코드 받아와서 **병합**
* git fetch->원격에서 최신코드 받아오기(refresh)
* git clone -b new_branch [url] ->특정 브랜치에서 코드 가져오기
* https://github.com/jaeeunzzang/sist_ShoppingMall.git->경로
* * *
*  :wq 저장하고나가기
