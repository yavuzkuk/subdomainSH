#  SubdomainSH

Bu bash script ile birlikte 5 farklı subdomain bulma aracını bir araya getirmiş oluyor.

- Amass
- Subfinder
- Assetfinder
- Findomain
- Crtsh

!!!info Bu araçların hali hazırda sisteminizde olması gerekir.

Verilen -d parametresiyle verilen domain üzerinde subdomain taraması yapılır.

## Kurulum

```
git clone https://github.com/yavuzkuk/subdomainSH subdomainSH

cd subdomainSH

chmod +x subdomain.sh

sudo mv subdomain.sh /usr/local/bin/subdomain

subdomain -d google.com
```