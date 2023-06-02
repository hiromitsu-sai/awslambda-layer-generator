# awslambda-layer-generator

aws lambda 用のレイヤーを作る

# How to Use

* コンテナイメージをビルドする.

```bash
$ docker build . -t awslambda-layer-generator:latest
```

* python のバージョンを変えたい時は `Dockerfile` のFROMイメージのバージョンを変更する.
* layer に含めたいパッケージは `requirements.txt` に記述する.

```bash
$ docker run --rm -v $(pwd)/requirements.txt:/tmp/requirements.txt -v $(pwd):/tmp/output awslambda-layer-generator:latest
```

* `layer.zip` が生成されるので、Lambdaのレイヤーとしてアップロードする.
