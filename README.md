# Makefile_Maker

## 설명
이 파일은 기본적인 makefile을 자동으로 만들어 줍니다.<br>
하지만 work directory안에 sub directory가 있는 경우는 100%는 안됩니다..
#### 종속성
- python3

## 설치
1. 해당 repo를 clone하세요
```
git clone https://github.com/ausungju/Makefile_Maker.git
```
2. 다운로드 된 directory로 이동하세요.
```
cd Makefile_Maker
```
3. install.sh를 실행해서 자동 설치 또는 수동 설치하세요.
```
# 자동 설치
bash install.sh
```
install.sh 실행 이후 터미널을 종료하고 다시 켜주세요

수동 설치의 경우 Maker를 최상위 work directory에 위치 하시면 됩니다.

## 사용법
* 자동 설치<br>
작업 디렉토리에서 maker를 입력하세요
```
maker
```

* 수동 설치<br>
Maker파일을 ./Maker or python3 Maker로 실행 하세요

## 삭제
```
# 자동 설치의 경우
rm ~/.local/Maker
rm ~/.config/fish/functions/maker.fish
sed -i '/삭제 할 내용/d' ~/.zshrc
sed -i '/삭제 할 내용/d' ~/.bash
```
