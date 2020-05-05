# pydub-demo
functional demo of pydub that converts every wav file into an mp3

# To Run
```bash
docker build -t="pydub" . && \
docker run --rm -it -v="$(pwd):/code" pydub python test.py
```

And any mp3's in the directory you are **currently** located in will now have converetd mp3's of the same name
