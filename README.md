# pydub-demo
functional demo of pydub that converts every wav file into an mp3

## To Run
```bash
docker build -t="pydub" . && \
docker run --rm -it -v="$(pwd):/code" pydub python test.py
```

any mp3's in the directory you are **currently** located in will now have converetd mp3's of the same name.  To modify/use for personal scripts simply run the above command in the root directory of your project.

## Modify FFMPEG version
I lovingly stole my ffmpeg Dockerfile from [jrottenberg](https://github.com/jrottenberg/ffmpeg). Feel free to replace the version I chose with any version  you need.
