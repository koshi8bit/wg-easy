## build & dockerhub

```bash
git clone -o gh https://github.com/koshi8bit/wg-easy
git checkout patch

docker login -u koshi8bit

cd ~/test-wg/wg-easy && docker build -t koshi8bit/wg-easy . && docker push koshi8bit/wg-easy
cd /home/services/vpn-simple && ./d.sh r

```

## local
```bash
cd ~/test-wg/wg-easy && docker build -t wg-easy-test . && cd /home/services/vpn-wg-test && ./d.sh r && docker compose logs wg-easy

```
