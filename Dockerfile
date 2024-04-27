# Usar a imagem base do Node.js
FROM node:16-alpine

# Define o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copia o arquivo 'package.json' e o 'yarn.lock' (se existir) para o diretório de trabalho
COPY apps/api/package.json ./
COPY apps/api/yarn.lock* ./

# Instala todas as dependências, incluindo as de desenvolvimento
RUN yarn install --frozen-lockfile

# Copia os arquivos restantes do projeto para o diretório de trabalho
COPY apps/api/ .

# Compila o código TypeScript para JavaScript
RUN yarn build

# Expõe a porta 3333 para comunicação com o servidor
EXPOSE 3333

# Define o comando para rodar a aplicação
CMD ["yarn", "start"]
