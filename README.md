### terrafrom eks provisioning

1. ec2 prod key페어 생성

- cd ~/.ssh
- sudo chmod 400 prod.pem

2. prod network 생성

- vpc / subnet 생성
- eks tag 설정 필요 (서브넷 kubernetes.io/role/elb 태그 필요)

3. eks 생성

4. eks 연결

- aws eks update-kubeconfig --region ap-northeast-2 --name mgt --alias mgt-micro

5. argocd repo의 aws-load-balncer-controller

- aws annotation 참고 후 추후 자동으로 alb 생성함
- upgrade-eks 실행

6. argocd 배포 values-eks 실행

- make upgrade-eks 실행
- 기타 secret 적용 예시
  ex) kubectl create secret generic jwt-secret --from-literal=JWT_KEY=jwtsecretkey

7. app-of-apps 배포

- make upgrade-eks 실행
