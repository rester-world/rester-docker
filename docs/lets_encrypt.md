## Lets Encrypt 가이드
이 컨테이너는 SSL 인증서 암호화에 대한 지원을 포함한다. 스크립트에는 인증서를 쉽게 설정하고 갱신할 수 있는 기능이 포함되어 있다. 이 기능이 작동하려면 container 가 완전히 확인 가능한(Dns) 인터넷 서버여야 한다는 점에 유의하십시오.
### 설치		
Lets Encrypt를 사용하여 container를 보호할 수 있다.  이 기능을 사용하려면  ```DOMAIN, GIT_EMAIL``` 및 ```WEBROOT``` 변수를 설정하여 container를 시작해야합니다. 그런 다음 

실행:
```		
sudo docker exec -t <CONTAINER_NAME> /usr/bin/letsencrypt-setup		
```		
이 기능을 사용하려면 제공된 DOMAIN에서 컨테이너에 액세스 할 수 있어야합니다.	
### 갱신		
Lets Encrypt 인증서는 90 일마다 만료되며, 간단하게 갱신할 수 있다

실행:		
```		
sudo docker exec -t <CONTAINER_NAME> /usr/bin/letsencrypt-renew		
```
