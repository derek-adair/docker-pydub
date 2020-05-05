import os
import glob
from pydub import AudioSegment

wav_dir = '/code/'  # Path where the videos are located
extension_list = ('*.wav',)

os.chdir(wav_dir)
for extension in extension_list:
    for wav in glob.glob(extension):
        mp3_filename = os.path.splitext(os.path.basename(wav))[0] + '.mp3'
        AudioSegment.from_file(wav).export(mp3_filename, format='mp3')
