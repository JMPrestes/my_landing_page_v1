# Usa uma imagem oficial e leve do Node.js
FROM node:20-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de configuração de dependências
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia o restante dos arquivos do projeto
COPY . .

# Expõe a porta padrão que o Astro usa para desenvolvimento
EXPOSE 4321

# Comando para iniciar o servidor de desenvolvimento do Astro aceitando conexões externas
CMD ["npm", "run", "dev", "--", "--host"]
