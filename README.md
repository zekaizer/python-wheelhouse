# python-local-wheel

```
pip freeze > requirements.txt
mkdir -p wheelhouse && \
    pip download -r requirements.txt -d wheelhouse \
    --quiet \
    --only-binary=:all: --platform=win_amd64 \
    --python-version=38 --abi=cp38
pip install --no-index --find-links=wheelhouse -r requirements.txt
```
