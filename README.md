# UL-Thesis-latex com Docker

* Usa o template disponibilizado em: https://github.com/jpmcarvalho/UL-Thesis-latex

## Pré-requisitos

1. **[Docker Desktop](https://www.docker.com/products/docker-desktop)** instalado e correndo em seu sistema.

## Fluxo de Trabalho (Compilar e Limpar)
1. Todos os comandos devem ser executados a partir do diretório raiz do projeto.
2. Cria o ambiente de compilação:

```bash
docker build -t latex-compiler .
```

3. Compilar o documento
```bash
docker run --rm -v "$(pwd)":/src latex-compiler
```

Saída esperada: `main.pdf` será gerado no seu diretório local.

4. Limpar Arquivos Auxiliares
Após a compilação, o seu diretório terá muitos arquivos temporários (`.aux`, `.log`, `.bbl`, etc.). Use este comando para remover esses arquivos e manter apenas o essencial.
```bash
docker run --rm -v "$(pwd)":/src latex-compiler make clean
```

