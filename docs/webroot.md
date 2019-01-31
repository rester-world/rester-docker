## Webroot
응용 프로그램 root를 대체 할 디렉토리를 사용하는 경우, WEBROOT 변수를 사용하여 nginx에 코드를 사용해야 하는 위치를 알려줄 수 있다.

``` docker run -e 'WEBROOT=/var/www/html/src/' -e OTHER_VARS ........ ```

예를 들어, 다음과 같은 구조를 가질 때


```
- repo root (/var/www/html)
 - craft
   - core craft
 - public
   - index.php
   -    other public files
```
이 경우 WEBROOT가 /var/www/html/public로 설정됨

만약 composer 와의 의존성을 관리하는 경우, 당신의 composer.json과 composer.lock 파일은 항상 당신이 WEBROOT로 설정한 디렉토리가 아닌 repo 루트에 위치해야 한다.

### conf
이 디렉토리는 당신이 호출한 구성 파일을 당신의 스크립트에서 넣을 수 있는 곳이다. 또한 사용자 정의 nginx 구성 파일을 포함할 수 있는 nginx 폴더의 홈 입니다.

### scripts
스크립트는 순서대로 실행되므로 실행 순서를 제어하기 위해 00,01,..,99번 번호를 매긴다. Bash 스크립트는 지원되지만, 물론 첫 번째 스크립트에 다른 실행 시간을 설치한 다음 원하는 언어로 스크립트를 작성할 수 있다.