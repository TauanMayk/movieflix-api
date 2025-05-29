# Versão do node.js que vai ser instalada dentro do container
FROM node:22

# Diretório de trabalho do container
WORKDIR /app

#Copia o arquivo de dependencia para dentro do container
COPY package.json .

# Instala as dependências do projeto
RUN npm install

# Copia o restante do código para dentro do container
COPY . .

# Expor a porta 3000, que vai ser a porta usada para ver a aplicação
EXPOSE 3000

# Define o comando para inicializar a aplicação
CMD ["npm", "start"]