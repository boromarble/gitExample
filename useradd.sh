#!/bin/bash
 
## 등록할 사용자들의 id를 공백을 구분자로 적어준다.
USERS="user1 user2 user3"
 
## adduser 할 사용자들이 속할 그룹명
GR="mygrp"
 
## group 생성
groupadd $GR
 
## 사용자 생성 및 암호설정. 암호는 사용자 id 에 숫자1 이 붙게 설정(Ex: user2 id의 암호는 user21)
for i in $USERS; do
        adduser ${i} -g ${GR};
        echo ${i}:${i}1 | chpasswd;
done
