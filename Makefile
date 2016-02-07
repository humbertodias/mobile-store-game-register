mkdir:
	mkdir -pv out && cd out && mkdir -pv apple/3.5-Inch apple/4-Inch apple/4.7-Inch apple/5.5-Inch apple/iPad apple/iPad\ Pro android windows

apple_3.5: mkdir
	convert in/01.png -resize 960x640\! -alpha remove -alpha off out/apple/3.5-Inch/01-960x640.png
	convert in/02.png -resize 960x640\! -alpha remove -alpha off out/apple/3.5-Inch/02-960x640.png
	convert in/03.png -resize 960x640\! -alpha remove -alpha off out/apple/3.5-Inch/03-960x640.png
	convert in/04.png -resize 960x640\! -alpha remove -alpha off out/apple/3.5-Inch/04-960x640.png
	convert in/05.png -resize 960x640\! -alpha remove -alpha off out/apple/3.5-Inch/05-960x640.png

apple_4: mkdir
	convert in/01.png -resize 1136x640\! -alpha remove -alpha off out/apple/4-Inch/01-1136x640.png
	convert in/02.png -resize 1136x640\! -alpha remove -alpha off out/apple/4-Inch/02-1136x640.png
	convert in/03.png -resize 1136x640\! -alpha remove -alpha off out/apple/4-Inch/03-1136x640.png
	convert in/04.png -resize 1136x640\! -alpha remove -alpha off out/apple/4-Inch/04-1136x640.png
	convert in/05.png -resize 1136x640\! -alpha remove -alpha off out/apple/4-Inch/05-1136x640.png
	ffmpeg -i in/"App Preview.mp4" -strict -2 -vf scale=1920x1080 -aspect 1.77777777777778 out/apple/4-Inch/"App Preview-1920x1080.mp4"

apple_4.7: mkdir
	convert in/01.png -resize 1334x750\! -alpha remove -alpha off out/apple/4.7-Inch/01-1334x750.png
	convert in/02.png -resize 1334x750\! -alpha remove -alpha off out/apple/4.7-Inch/02-1334x750.png
	convert in/03.png -resize 1334x750\! -alpha remove -alpha off out/apple/4.7-Inch/03-1334x750.png
	convert in/04.png -resize 1334x750\! -alpha remove -alpha off out/apple/4.7-Inch/04-1334x750.png
	convert in/05.png -resize 1334x750\! -alpha remove -alpha off out/apple/4.7-Inch/05-1334x750.png
	ffmpeg -i in/"App Preview.mp4" -strict -2 -vf scale=1334x750 -aspect 1.779 out/apple/4.7-Inch/"App Preview-1334x750.mp4"

apple_5.5: mkdir
	convert in/01.png -resize 2208x1242\! -alpha remove -alpha off out/apple/5.5-Inch/01-2208x1242.png
	convert in/02.png -resize 2208x1242\! -alpha remove -alpha off out/apple/5.5-Inch/02-2208x1242.png
	convert in/03.png -resize 2208x1242\! -alpha remove -alpha off out/apple/5.5-Inch/03-2208x1242.png
	convert in/04.png -resize 2208x1242\! -alpha remove -alpha off out/apple/5.5-Inch/04-2208x1242.png
	convert in/05.png -resize 2208x1242\! -alpha remove -alpha off out/apple/5.5-Inch/05-2208x1242.png
	ffmpeg -i in/"App Preview.mp4" -strict -2 -vf scale=1920x1080 -aspect 1.77777777777778 out/apple/5.5-Inch/"App Preview-1920x1080.mp4"

apple_ipad: mkdir
	convert in/01.png -resize 2048x1536\! -alpha remove -alpha off out/apple/iPad/01-2048x1536.png
	convert in/02.png -resize 2048x1536\! -alpha remove -alpha off out/apple/iPad/02-2048x1536.png
	convert in/03.png -resize 2048x1536\! -alpha remove -alpha off out/apple/iPad/03-2048x1536.png
	convert in/04.png -resize 2048x1536\! -alpha remove -alpha off out/apple/iPad/04-2048x1536.png
	convert in/05.png -resize 2048x1536\! -alpha remove -alpha off out/apple/iPad/05-2048x1536.png
	ffmpeg -i in/"App Preview.mp4" -strict -2 -vf scale=1200x900 -aspect 1.33333333333333 out/apple/iPad/"App Preview-1200x900.mp4"

apple_ipadpro: mkdir
	convert in/01.png -resize 2732x2048\! -alpha remove -alpha off out/apple/iPad\ Pro/01-2732x2048.png
	convert in/02.png -resize 2732x2048\! -alpha remove -alpha off out/apple/iPad\ Pro/02-2732x2048.png
	convert in/03.png -resize 2732x2048\! -alpha remove -alpha off out/apple/iPad\ Pro/03-2732x2048.png
	convert in/04.png -resize 2732x2048\! -alpha remove -alpha off out/apple/iPad\ Pro/04-2732x2048.png
	convert in/05.png -resize 2732x2048\! -alpha remove -alpha off out/apple/iPad\ Pro/05-2732x2048.png
	ffmpeg -i in/"App Preview.mp4" -strict -2 -vf scale=1200x900 -aspect 1.33333333333333 out/apple/iPad\ Pro/"App Preview-1200x900.mp4"

apple: apple_ipadpro apple_ipad apple_5.5 apple_4.7 apple_4 apple_3.5

android_icon: mkdir
	convert in/icon.png -resize 512x512\! -alpha remove -alpha off out/android/icon-512x512.png

android_tela: mkdir
	convert in/01.png -resize 3840x3840\! -alpha remove -alpha off out/android/01-3840x3840.png
	convert in/02.png -resize 3840x3840\! -alpha remove -alpha off out/android/02-3840x3840.png
	convert in/03.png -resize 3840x3840\! -alpha remove -alpha off out/android/03-3840x3840.png
	convert in/04.png -resize 3840x3840\! -alpha remove -alpha off out/android/04-3840x3840.png
	convert in/05.png -resize 3840x3840\! -alpha remove -alpha off out/android/05-3840x3840.png

android_title: mkdir
	convert in/title.png -resize 1024x500\! -alpha remove -alpha off out/android/title-1024x500.png
	convert in/title.png -resize 180x120\! -alpha remove -alpha off out/android/title-180x120.png
	convert in/title.png -resize 320x180\! -alpha remove -alpha off out/android/title-320x180.png

android: android_icon android_tela android_title

windows_icon: mkdir
	convert in/icon.png -resize 300x300\! -alpha remove -alpha off out/windows/icon-300x300.png

windows_mobile: mkdir
	convert in/01.png -resize 1280x720\! -alpha remove -alpha off out/windows/01-1280x720.png
	convert in/02.png -resize 1280x720\! -alpha remove -alpha off out/windows/02-1280x720.png
	convert in/03.png -resize 1280x720\! -alpha remove -alpha off out/windows/03-1280x720.png
	convert in/04.png -resize 1280x720\! -alpha remove -alpha off out/windows/04-1280x720.png
	convert in/05.png -resize 1280x720\! -alpha remove -alpha off out/windows/05-1280x720.png

windows_desktop: mkdir
	convert in/01.png -resize 1366x768\! -alpha remove -alpha off out/windows/01-1366x768.png
	convert in/02.png -resize 1366x768\! -alpha remove -alpha off out/windows/02-1366x768.png
	convert in/03.png -resize 1366x768\! -alpha remove -alpha off out/windows/03-1366x768.png
	convert in/04.png -resize 1366x768\! -alpha remove -alpha off out/windows/04-1366x768.png
	convert in/05.png -resize 1366x768\! -alpha remove -alpha off out/windows/05-1366x768.png

windows: windows_desktop windows_mobile windows_icon

clean:
	rm -rf out
