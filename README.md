# Simple implementation of Cubist mirror

## Requirement
- [Chainer](https://github.com/pfnet/chainer)
```
$ pip install chainer
```

## Prerequisite
Clone this repository
Download VGG16 model (http://www.robots.ox.ac.uk/~vgg/software/very_deep/caffe/VGG_ILSVRC_16_layers.caffemodel) and save it in the root folder
run setup_model.sh file using the following command
```
sh setup_model.sh
```

## Train
you can train one image transformation network model per one style target.
or you can use the models provided here.
use following command to train. 
```
python train.py -s <style_image_path> -d <training_dataset_path> -g 0
```

## Generate
use following line to generate images
```
python generate.py <input_image_path> -m <model_path> -o <output_image_path>
```

This repo has a pretrained model which was trained with "The starry night" by "Vincent van Gogh" as an example.
- example:
```
python generate.py sample_images/tubingen.jpg -m models/starrynight.model -o sample_images/output.jpg
```

##Cubist Mirror
  This work belongs to its developers. I took the project from yusuketomoto's repositry (https://github.com/yusuketomoto/chainer-fast-neuralstyle). i found Gene Kogan's work Cubist Mirror (https://github.com/genekogan/CubistMirror) hard to implement. So i worte a simple script which use webcam to click picture and feeds it to generate.py and finally the image is viewed on safari (if you are on windows then you have to download safari first to use this). The size of cubes in the images can be changed by editing the resolution in cubstmrror.sh
  run cubstmrror.sh for cubist mirror
```
sh cubstmrror.sh
```
  

## License
MIT

## Reference
  
- [Perceptual Losses for Real-Time Style Transfer and Super-Resolution](http://arxiv.org/abs/1603.08155)

Codes written in this repository based on following nice works, thanks to the author.
- [chainer-gogh](https://github.com/mattya/chainer-gogh.git) Chainer implementation of neural-style. I heavily referenced it.
- [chainer-cifar10](https://github.com/mitmul/chainer-cifar10) Residual block implementation is referred.
