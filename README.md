## 개요
이것은 nginx와 php-fpm, redis 를 위한 컨테이너를 만드는 Dockerfile/image 이다. 

컨테이너가 생성될 때 git에서 웹사이트 코드를 가져올 수 있고, 컨테이너가 git과 코드 사이의 변경 사항을 push / pull 할 수 있다.

또한 이 컨테이너는 코드와 설정을 업데이트하기 위해 도커에 전달된 변수로 템플릿 파일을 업데이트할 수 있다.


### 버전
| Docker Tag | Git Release | Nginx Version | PHP Version | Alpine Version |
|-----|-------|-----|--------|--------|
| latest/1.5.7 | Master Branch |1.14.0 | 7.2.4 | 3.7 |

### 링크
- [https://github.com/rester-world/rester-docker](https://github.com/rester-world/rester-docker)
- [https://hub.docker.com/r/rester/rester-docker](https://hub.docker.com/r/rester/rester-docker)


## 시작하기
docker hub 에서 이미지 받아오기:
```
docker pull rester/rester-docker:latest
```
### 실행
이미지를 컨테이너로 생성:
```
sudo docker run -d rester/rester-docker
```
시작할 때 git에서 코드를 동적으로 가져오는 방법:
```
docker run -d -e 'EMAIL=email_address' rester/rester-docker:latest
```

그런 다음 ```http://<DOCKER_HOST>``` 을 검색하여 기본 설치 파일을 볼 수 있다. ```DOCKER_HOST```를 찾으려면 ```docker inspect```를 사용하여 IP주소를 얻어야 한다. (일반적으로 172.17.0.2)

자세한 예제와 설명은 설명서를 참조.
## 참고 문서

- [Building from source](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/building.md)
- [Versioning](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/versioning.md)
- [Config Flags](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/config_flags.md)
- [Git Auth](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/git_auth.md)
  - [Personal Access token](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/git_auth.md#personal-access-token)
  - [SSH Keys](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/git_auth.md#ssh-keys)
- [Git Commands](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/git_commands.md)
 - [Push](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/git_commands.md#push-code-to-git)
 - [Pull](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/git_commands.md#pull-code-from-git-refresh)
- [Repository layout / webroot](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/repo_layout.md)
 - [webroot](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/repo_layout.md#src--webroot)
- [User / Group Identifiers](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/UID_GID_Mapping.md)
- [Custom Nginx Config files](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/nginx_configs.md)
 - [REAL IP / X-Forwarded-For Headers](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/nginx_configs.md#real-ip--x-forwarded-for-headers)
- [Scripting and Templating](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/scripting_templating.md)
 - [Environment Variables](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/scripting_templating.md#using-environment-variables--templating)
- [Lets Encrypt Support](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/lets_encrypt.md)
 - [Setup](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/lets_encrypt.md#setup)
 - [Renewal](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/lets_encrypt.md#renewal)
- [PHP Modules](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/php_modules.md)
- [Xdebug](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/xdebug.md)
- [Logging and Errors](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/logs.md)

## 가이드
- [Running in Kubernetes](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/guides/kubernetes.md)
- [Using Docker Compose](https://gitlab.com/ric_harvey/nginx-php-fpm/blob/master/docs/guides/docker_compose.md)
