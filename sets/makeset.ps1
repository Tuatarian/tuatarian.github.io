$urls = "https://lh3.googleusercontent.com/iecdsx8DH5VOWqqqVHB90cvu33yRxPet-DudjK3oySM3kOyvG30cZtYnDPBfxZphXg=s1200", "https://img.apmcdn.org/b0bac40848aac153d41caf45e2945d9b8e574b42/uncropped/6702c3-20150323-washington.jpg", "https://zantana.net/static/81f748bfb715775c0a798496b37e9ff7/38f6f/suleiman_i_sultan_of_the_ottoman_empire.jpg"
$outs = "(b) Antonio Salazar de Oliveira.jpg", "(a) Washington Crossing the Delaware.jpg", "(c) Suleiman's Onion Hat.jpg"
$setname = "(2022, 04, 15) Washington, Suleiman, Salazar"

rm -Recurse "fname.txt"
rm -Recurse "$setname.zip"

ft > "fname.txt"
Set-Content "fname.txt" $setname


mkdir $setname
foreach ($i in 0..($urls.Count-1)) {
	Invoke-WebRequest -Uri $urls[$i] -OutFile $outs[$i]
	convert "$($outs[$i])" (("$($outs[$i])" -replace ".{3}$") + "png")
	mv (("$($outs[$i])" -replace ".{3}$") + "png") $setname
	rm $outs[$i]
}
cp imdat.txt $setname

Compress-Archive "$setname/*" "$setname.zip"
rm -Recurse $setname
