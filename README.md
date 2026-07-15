# mypheed-site

Site de apresentação e downloads do [Mypheed](https://mypheed.myph.com.br) — publicado via GitHub Pages em `mypheed.myph.com.br` (CNAME na zona Cloudflare de myph.com.br).

## Publicar uma versão nova do programa

No repositório do Mypheed (máquina do Leonardo):

```powershell
node tools/build-dist.mjs --out ..\mypheed-site\downloads
cd ..\mypheed-site
git add -A; git commit -m "Pacotes vX.Y.Z"; git push
```

O `build-dist.mjs` gera `Mypheed-Windows.zip`, `Mypheed-macOS.tar.gz` e o `versao.json` (versão, tamanhos e SHA-256) que a página lê para exibir os dados do download.

## Estrutura

- `index.html` — landing page (estática, sem build)
- `downloads/` — pacotes + `versao.json`
- `install-mac.sh` — instalador de uma linha do macOS (`curl … | bash`)
- `img/` — ícones e fotos de demonstração (geradas por IA, sem fotos de clientes)
