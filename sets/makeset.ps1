$urls = "https://lh3.googleusercontent.com/iecdsx8DH5VOWqqqVHB90cvu33yRxPet-DudjK3oySM3kOyvG30cZtYnDPBfxZphXg=s1200", "https://img.apmcdn.org/b0bac40848aac153d41caf45e2945d9b8e574b42/uncropped/6702c3-20150323-washington.jpg", "https://zantana.net/static/81f748bfb715775c0a798496b37e9ff7/38f6f/suleiman_i_sultan_of_the_ottoman_empire.jpg", "https://ihsvoice.com/wp-content/uploads/2019/05/qb.jpg"
$outs = "(c) Antonio Salazar de Oliveira.png", "(a) Washington Crossing the Delaware.png", "(b) Suleiman's Onion Hat.png", "(d) My father was a historian"
$setname = "Washington, Suleiman, Salazar (04,03,2022)"

rm -Recurse $setname
rm -Recurse "$setname.zip"

rm "../fname"
ft > ../fname.txt
Set-Content "../fname.txt" $setname

mkdir $setname
foreach ($i in 0..($urls.Count-1)) {
	Invoke-WebRequest -Uri $urls[$i] -OutFile $outs[$i]
	mv $outs[$i] $setname
}
cp imdat.txt $setname

Compress-Archive "$setname/*" "$setname.zip"
rm -Recurse $setname
