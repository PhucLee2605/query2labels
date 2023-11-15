curl http://images.cocodataset.org/zips/train2014.zip -o data/coco/train2014.zip
curl http://images.cocodataset.org/zips/val2014.zip -o data/coco/val2014.zip
curl http://images.cocodataset.org/zips/test2014.zip -o data/coco/test2014.zip

curl http://images.cocodataset.org/annotations/annotations_trainval2014.zip -o data/coco/annotations_trainval2014.zip
curl  http://images.cocodataset.org/annotations/image_info_test2014.zip -o data/coco/image_info_test2014.zip

cd data/coco

find . -name '*.zip' -print0 | xargs -0 -I {} -P 10 unzip {}