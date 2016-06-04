while true
do
imagesnap -w 1 $FACE

convert snapshot.jpg -resize 300x200 snapshot.jpg

python generate.py snapshot.jpg -m models/cubist.model -o output.jpg

convert output.jpg -resize 1600x1000 output.jpg



open -a "Safari" output.jpg

done