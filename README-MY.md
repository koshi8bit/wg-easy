## build & dockerhub

```bash
git clone -o gh https://github.com/koshi8bit/wg-easy
git checkout patch

docker login -u koshi8bit

cd ~/test-wg/wg-easy && docker build -t koshi8bit/wg-easy-pro . && docker push koshi8bit/wg-easy-pro

```

## local
```bash
cd ~/test-wg/wg-easy && docker build -t wg-easy-pro2 . && cd /home/services/vpn-wg-test && ./d.sh r && docker compose logs wg-easy

```

```bash
cd ~/test-wg/wg-easy && docker build -t koshi8bit/wg-easy-pro . && docker push koshi8bit/wg-easy-pro && cd /home/services/vpn-wg-test && ./d.sh r && docker compose logs wg-easy

cd ~/test-wg/wg-easy && docker build -t koshi8bit/wg-easy-pro . && docker push koshi8bit/wg-easy-pro && cd /home/services/vpn-wg-test && ./d.sh r && docker compose logs wg-easy

cd ~/test-wg/wg-easy && docker build --no-cache --progress=plain -t wg-easy-pro2 . && cd /home/services/vpn-wg-test && ./d.sh r && docker compose logs wg-easy

```



