#!/bin/bash
# chmod +x install_python3.12.sh && ./install_python3.12.sh #파일을 실행 가능한 상태로 바꾼 후 실행

# 스크립트 시작 시간 기록
start_time=$SECONDS

# 필요한 패키지 설치
sudo apt update
sudo apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev curl software-properties-common

# Python 소스 코드 다운로드 및 압축 해제
wget https://www.python.org/ftp/python/3.12.4/Python-3.12.4.tar.xz 
tar -xf Python-3.12.4.tar.xz
cd Python-3.12.4

# Python 빌드 및 설치
./configure 
sudo make altinstall #altinstall을 이용함으로써 기존에 설치된 파이썬은 덮어쓰지 않는다.

# Python 소스 및 압축 파일 삭제
cd ..
rm -rf Python-3.12.4 Python-3.12.4.tar.xz

# Python 3.12를 사용하여 pip 업그레이드
python3.12 -m pip install --upgrade pip #pip 명령어를 업그레이드

# 파이썬 패키지 설치 pip list로 확인가능
python3.12 -m pip install --force-reinstall retry==0.9.2 # 함수 호출에 실패할 경우 재시도 가능
python3.12 -m pip install --force-reinstall openai==1.37.1 # 오픈AI API 패키지
python3.12 -m pip install --force-reinstall Flask==3.0.3 # 파이썬 웹 프레임워크
python3.12 -m pip install --force-reinstall pytz==2024.1 # 시간대 처리
python3.12 -m pip install --force-reinstall tavily-python==0.3.5 # AI 기반 인터넷 검색 도구
python3.12 -m pip install --force-reinstall pymongo==4.8.0 # Mongo DB 클라이언트
python3.12 -m pip install --force-reinstall scipy==1.14.0 # 과학 계산 라이브러리
python3.12 -m pip install --force-reinstall "pinecone-client[grpc]==5.0.0" # pinecone 벡터 DB 클라이언트
python3.12 -m pip install --force-reinstall requests==2.32.3 # HTTP 요청 처리
python3.12 -m pip install --force-reinstall tiktoken==0.7.0 # 오픈AI 토크나이저

# openai 패키지와 호환성 문제 해결을 위한 httpx 패키지 다운그레이드
python3.12 -m pip install --force-reinstall httpx==0.27.2

# Python 및 pip alias 설정
echo "alias python3='python3.12'" >> ~/.bashrc
echo "alias pip='python3.12 -m pip'" >> ~/.bashrc

# 이후 새터미널에서 적용할려면 source ~/.bashrc를 실행시키면 기존에 열려 있는 터미널에서도 변경된 환경 설정을 즉시 적용 가능

# 스크립트 종료 시간과 소요 시간 계산 및 출력
end_time=$SECONDS
elapsed=$(( end_time - start_time ))
echo "스크립트 실행 시간: $(( elapsed / 60 ))분 $(( elapsed % 60 ))초"