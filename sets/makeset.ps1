$urls = "https://www.mountainfilm.org/files/styles/large_16x9/public/images/films/MF15-STILL-Cerro%20Torre4.jpg?itok=tMZPrH2A", "https://www.adventurealternative.com/media/817366/khan-tengri-bc-on-north-inylchek-glacier.jpg", "https://media.tacdn.com/media/attractions-splice-spp-674x446/07/25/58/3f.jpg"
$outs = "(c) Cerro Torre.png", "(b) Khan Tengri.png", "(a) Mount Kenya.png"
$setname = "(2022,04,24) The Not-8000ers"

rm -Recurse "fname.txt"
rm -Recurse "$setname.zip"

ft > "fname.txt"
Set-Content "fname.txt" $setname
mkdir $setname

foreach ($i in 0..($urls.Count-1)) {
	Invoke-WebRequest -Uri $urls[$i] -OutFile $outs[$i]
	convert $outs[$i] $outs[$i]
	mv $outs[$i] $setname
	rm $outs[$i]
}
cp imdat.txt $setname

Compress-Archive "$setname/*" "$setname.zip"
rm -Recurse $setname
