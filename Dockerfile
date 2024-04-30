# Usar a imagem base do Node.js
FROM node:20 AS base

# Define o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copia os arquivos de configuração necessários para o diretório de trabalho
COPY package.json yarn.lock turbo.json ./
COPY config/ config/
COPY packages/auth/ packages/auth/
COPY packages/env/ packages/env/

# Instala as dependências do projeto principal
RUN yarn install --frozen-lockfile

# Copia e instala as dependências para o pacote específico da API
COPY apps/api apps/api
RUN cd apps/api && yarn install --frozen-lockfile

# Constrói todos os pacotes necessários, se aplicável
# Supondo que você tenha um script turbo para construir pacotes dependentes
RUN yarn turbo run build --scope=@saas/api --include-dependencies

FROM node:20-alpine3.19 AS deploy

WORKDIR /usr/src/app

# Copia os arquivos de configuração necessários para o diretório de trabalho
COPY --from=base /usr/src/app/ ./

# Expõe a porta 3000 para comunicação com o servidor
EXPOSE 3000

# Define o comando para rodar a aplicação
CMD ["node", "apps/api/dist/http/server.js"]
