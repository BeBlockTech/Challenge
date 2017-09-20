# Step 1 - impor library
import cmu_sphinx4
# Step 2 - read audio file
audio_URL = 'http://some.sire.com/audio.wav'
transcriber = cmu_sphinx4Transcriber(audio_URL)
# Step 3 - print it out
for line in transcriber.transcript_stream():
	print line