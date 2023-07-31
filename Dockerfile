#Dockerfile
FROM python:3.11

ADD Church.py .

RUN apt-get update && apt-get install -y libgl1-mesa-dev && apt-get install alsa-utils -y

RUN apt-get install -y portaudio19-dev && apt-get install -y espeak

RUN pip3 install beautifulsoup4 certifi charset-normalizer comtypes ecapture gptj idna jaraco.context more-itertools numpy opencv-python PyAudio pyttsx3 requests soupsieve SpeechRecognition urllib3 wikipedia wolframalpha xmltodict

CMD [ "python3", "./Church.py" ]