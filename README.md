# awslambda-layer-generator
lambdaの任意のレイヤー作成をするやつ

# How to Use

python のバージョンを変えたい時は `Dockerfile` のFROMイメージのバージョンを変更する。
layer に含めたいパッケージは `requirements.txt` に記述する。

```bash
$ docker build . -t awslambda-layer-generator:latest
$ docker run --rm -v $(pwd)/requirements.txt:/tmp/requirements.txt -v $(pwd):/tmp/output awslambda-layer-generator:latest
```

`layer.zip` が生成されるので、Lambdaのレイヤーとしてアップロードする。
