# Diagrama M-ER

## Descrição da aplicação

Usuarios comuns poderam se cadastrar com nome completo, avatar, email, senha, informações de contato como: email, instagram. Para os administradores serão cadastrados pelo usuario root, com nome completo, avatar, email, senha. Caso já, possuam uma conta irão logar com email ou nome e senha.

Assm, logadas poderam criar os items (possuira codigo unico, nome, está ativo ou não, observação, data de criação e atualização, qrcode, foto) dos quais querem que estejam armazenados na aplicação.

Tera um chat para que assim que localizado o item seja comunicado diretamente com o usuario.

---

## Universo

### Entidades:

* A: **Usuário**
    * Atributos:
        * id_usuario (int) - PK AUTO_INCREMENT 
        * nome_completo (string) - NOT NULL
        * avatar (imagem) - NULL
        * email (string) - UK,
        * senha (string) - NOT NULL
        * nivel_acesso (string) - NOT NULL "comum" ou "administrador"

* B: **Item**
    * Atributos:
        * id_item (int) - PK AUTO_INCREMENT
        * codigo_unico (string) - UK Gerado automaticamente
        * nome (string) - NOT NULL
        * ativo (booleano) - NOT NULL
        * observacao (string) - NOT NULL
        * data_criacao (data) - NOT NULL Automática
        * data_atualizacao (data) - NOT NULL Automática
        * qrcode (imagem) - NOT NULL Gerado automaticamente
        * foto (imagem) - NOT NULL

* C: **Chat**
    * Atributos:
        * id_chat (int) - PK AUTO_INCREMENT
        * id_usuario (int) - NOT NULL FK para Usuário
        * id_item (int) - NOT NULL FK para Item
        * mensagem (string) - NOT NULL
        * data_hora_envio (data) - NOT NULL Automática

* D: **Informações de Contato**
    * Atributos:
        * id_informacao_contato (int) - PK AUTO_INCREMENT 
        * id_usuario (int) - FK para Usuário NOT NULL
        * email_contato (string) - NULL
        * instagram (string) - NULL

### Relacionamentos:

* Um usuário pode criar vários itens.
* Um item pode estar em vários chats.
* Um usuário pode participar de vários chats.
* Um chat se refere a um usuário e um item específicos.

### Observações:

* A tabela `Usuario` possui um atributo ``nivel_acesso`````` que indica se o usuário é comum ou administrador.
* A tabela `Item` possui um atributo `ativo` que indica se o item está ativo ou inativo.
* A tabela `Chat` possui atributos `id_usuario` e `id_item` que referem-se aos IDs dos usuários e itens envolvidos na conversa.
* A tabela `Chat` também possui atributos `mensagem` e `data_hora_envio` que armazenam as mensagens e a data/hora de envio das mesmas.


