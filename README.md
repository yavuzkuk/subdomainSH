#  SubdomainSH

Bu bash script ile birlikte 5 farklı subdomain bulma aracını bir araya getirmiş oluyor.

- [Amass](https://github.com/owasp-amass/amass)
- [Subfinder](https://github.com/projectdiscovery/subfinder)
- [Assetfinder](https://github.com/tomnomnom/assetfinder)
- [Findomain](https://github.com/Findomain/Findomain)
- [Crtsh](https://github.com/YashGoti/crtsh)
- [Anew](https://github.com/tomnomnom/anew)

!! Bu araçların hali hazırda sisteminizde olması gerekir.!!

Verilen -d parametresiyle verilen domain üzerinde subdomain taraması yapılır.

## Kurulum

```
git clone https://github.com/yavuzkuk/subdomainSH subdomainSH

cd subdomainSH

chmod +x subdomain.sh

sudo mv subdomain.sh /usr/local/bin/subdomain

subdomain -d google.com
```