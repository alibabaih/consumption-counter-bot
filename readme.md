# Setup 

```
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc

pyenv install 3.9.16

apt-get install zlib1g-dev libffi-dev \
    build-essential python-dev python-setuptools python-pip python-smbus \
    libncursesw5-dev libgdbm-dev libc6-dev libsqlite3-dev tk-dev openssl lzma \
    zlib1g-dev libffi-dev libssl-dev libbz2-dev libreadline-dev libsqlite3-dev \
    liblzma-dev libncurses-dev

pyenv local 3.9.16
pip install -r requirements.txt
python main.py
```

# Build

```
docker build -t consumption-counter .
```

# Deploy

```
docker run -e TOKEN=<token> -d consumption-counter
```