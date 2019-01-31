## 환경변수 사용하기
변수를 도커 명령줄에서 환경 변수로 전달하려면
예:
```
sudo docker run -d -e 'YOUR_VAR=VALUE' richarvey/nginx-php-fpm
```
그런 다음 PHP를 사용하여 환경 변수를 코드로 가져올 수 있다.
```
string getenv ( string $YOUR_VAR )
```
또 다른 예:
```
<?php
echo $_ENV["APP_ENV"];
?>
```
