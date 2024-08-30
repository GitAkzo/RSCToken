# RSC Token
## O que é um token

- Em termos gerais, um token é uma representação digital de algo de valor. Também pode ser considerado um contrato inteligente padronizado. Padrões esses que são definidos pela ERC — Ethereum Request for Comment — que define a convenção para os smart contracts, com regras para a interação com os contratos.

---

### ERC-20
- ERC-20 é um padrão de um token, cujo 20 é o número de identificação único da proposta. O padrão ERC-20 define um conjunto de regras que devem ser atendidas para que um token seja aceito e capaz de interagir com outros tokens na rede.
- Um token ERC-20 deve ser obrigatoriamente:
    - Fungível;
    - Transferível;
    - Base monetária fixada.
- OBS: Fungível vs Não Fungível
    - **Fungível:** Qualquer coisa substituível, por exemplo, trocar uma nota de 50 reais em duas de 20 e uma de 10.
    - **Não-Fungível:** Não substituível, por exemplo, obras de arte. A obra Monalisa é única, podem haver cópias, entretanto a obra original é única e insubstituível devido à alguns fatores, como época, pintor, materiais utilizados, entre outros.
- Exemplos incluem criptomoedas como Bitcoin e Ethereum, e também tokens como o USDT (Tether). Cada unidade de um token fungível tem o mesmo valor e pode ser trocada por outra unidade do mesmo tipo.



## Sobre o projeto
- Esse projeto foi desenvolvido no bootcamp [Binance - Blockchain Developer with Solidity](https://www.dio.me/bootcamp/coding-the-future-blockchain-developer-with-solidity) da [DIO](https://www.dio.me/), onde há diversos conteúdos sobre Web3, Blockchain, Criptografia, Criptomoedas, entre outros temas techs que estão cada vez mais ganhando notoriedade.
- Diferentemente do projeto RSCCoin que criei uma blockchain local utilizando o Ganache, nesse projeto criei um token em uma das blockchains de teste do Ethereum, a Sepolia¹. À este token, dei o nome de RSC Token, e seu símbolo é RSC;

    - ¹ Sepolia é uma das Testnets do Ehereum, inicialmente criei o contrato na Testnet Goerli, entretanto, tive  dificuldade em conseguir faucets (criptomoedas de teste) para realizar a realizar o deploy do Smart Contract que criasse o token, porém, um colega da DIO, o [Guilherme](https://www.dio.me/users/tx_opus), sugeriu que eu utilizasse a Sepolia e ainda me enviou alguns faucets que me pouparam um bom tempo.

### Praticando
- Utilizei o código fornecido na aula e acrescentei algumas melhorias, para reduzir a taxa de gas, como o uso de funções da biblioteca OpenZeppelin.
- Na IDE online Remix, basta seguir os mesmos passos do projeto anterior:
    1. Escreva o código;
    2. Compile para verificar se há erros
    3. Após o código ter sido compilado com sucesso, basta realizar o deploy do projeto colocando o endereço no campo necessário, como indicado na imagem abaixo

        ![1 RSC Token - Deploy](./assets/1%20RSC%20Token%20-%20Deploy.png)
    4. Após colocar o endereço da carteira, ele irá solicitar a confirmação no Metamask:
        
        ![2 RSC Token - Confirmação do Contrato](./assets/2%20RSC%20Token%20-%20Confirmação%20do%20Contrato.png)

    5. Após confirmar o contrato, no terminal deve aparecer algo como:

        ![3 RSC Token - Terminal](./assets/3%20RSC%20Token%20-%20Terminal.png)

    6. E então, no Metamask já deve ser possível ver o token na sua carteira. Caso não apareça, acesse o site [EtherScan](https://sepolia.etherscan.io/) pegue o endereço da sua carteira e insira no campo de busca:

        ![4.1 RSC Token - Importação de Tokens](./assets/4.1%20RSC%20Token%20-%20Importação%20de%20Tokens.png)

        a. Na área **Overview**, procure por Token Holdings e clique no token criado.

        ![4.2 RSC Token - Importação de Tokens](./assets/4.2%20RSC%20Token%20-%20Importação%20de%20Tokens.png)

        b. Copie o código do contrato, abra a sua carteira do Metamask, clique em **+ importar tokens**, cole o endereço do contrato e confirme:

        ![4.3 RSC Token - Importação de Tokens](./assets/4.3%20RSC%20Token%20-%20Importação%20de%20Tokens.png)
        
        ![4.4 RSC Token - Importação de Tokens](./assets/4.4%20RSC%20Token%20-%20Importação%20de%20Tokens.png)
        ![4.5 RSC Token - Importação de Tokens](./assets/4.5%20RSC%20Token%20-%20Importação%20de%20Tokens.png)

        c. Por fim, os tokens devem aparecer:
        
        ![5 RSC Token - Execução Bem Sucedida](./assets/5%20RSC%20Token%20-%20Execução%20Bem%20Sucedida.png)

    7. Realizei a transferência de 10.000 tokens para uma [carteira secundária](https://sepolia.etherscan.io/address/0xa17c0C28B981AcBa2B8f8a9d4A64d4f96861eB70), você pode conferir pelo [hash da transação](https://sepolia.etherscan.io/tx/0x58dc28e81738bd762a677ce91e2f6d79d5a6ccd98323547e01728c8eaeef5926) no site Etherscan.

        ![6 RSC Token - Transferência do Token Entre Carteiras](./assets/6%20RSC%20Token%20-%20Transferência%20do%20Token%20Entre%20Carteiras.png)

    8. Veja as carteiras:

        a. Carteira principal e originária dos tokens:
            ![7.1 RSC Token - Tokens na Carteira 1](./assets/7.1%20RSC%20Token%20-%20Tokens%20na%20Carteira%201.png)

        b. Carteira secundária
            ![7.2 RSC Token - Tokens na Carteira 2](./assets/7.2%20RSC%20Token%20-%20Tokens%20na%20Carteira%202.png)



---

## Tecnologias e ferramentas utilizadas
![Remix](https://img.shields.io/badge/remix-%23000.svg?style=for-the-badge&logo=remix&logoColor=white)
![Solidity](https://img.shields.io/badge/Solidity-%23363636.svg?style=for-the-badge&logo=solidity&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)
- Gerenciador de carteiras - [MetaMask](https://chromewebstore.google.com/detail/nkbihfbeogaeaoehlefnkodbefgpgknn?hl=pt-BR&utm_source=ext_sidebar)
- Ferramenta que permite a criação de Blockchain de maneira local - [Ganache](https://archive.trufflesuite.com/ganache/)


## Minhas Redes Sociais

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/rasec-silva/)
[![Instagram](https://img.shields.io/badge/-Instagram-%23E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/rasec1921/)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/GitAkzo)