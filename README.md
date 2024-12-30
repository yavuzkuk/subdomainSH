#  SubdomainSH

Bu bash script ile birlikte 6 farklı subdomain bulma aracını bir araya getirmiş oluyor.

- [Amass](https://github.com/owasp-amass/amass)
- [Subfinder](https://github.com/projectdiscovery/subfinder)
- [Assetfinder](https://github.com/tomnomnom/assetfinder)
- [Findomain](https://github.com/Findomain/Findomain)
- [Crtsh](https://github.com/YashGoti/crtsh)
- [Sublist3r](https://github.com/aboul3la/Sublist3r)
- [Anew](https://github.com/tomnomnom/anew)


> [!Dikkat]  
> Bu araçların hali hazırda sisteminizde olması gerekir.


Verilen -d parametresiyle verilen domain üzerinde subdomain taraması yapılır.

## Kurulum

```
git clone https://github.com/yavuzkuk/subdomainSH subdomainSH

cd subdomainSH

chmod +x subdomain.sh

sudo mv subdomain.sh /usr/local/bin/subdomain

subdomain -d google.com
```