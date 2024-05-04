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
        * id_usuario (int) - PK
        * nome_completo (string)
        * avatar (imagem)
        * email (string) - UK
        * senha (string)
        * tipo_usuario (string) - "comum" ou "administrador"
        * informacao_contato (string)
            * email_contato (string)
            * instagram (string)

* B: **Item**
    * Atributos:
        * id_item (int) - PK
        * codigo_unico (string) - Gerado automaticamente
        * nome (string)
        * ativo (booleano)
        * observacao (string)
        * data_criacao (data) - Automática
        * data_atualizacao (data) - Automática
        * qrcode (imagem) - Gerado automaticamente
        * foto (imagem)

* C: **Chat**
    * Atributos:
        * id_chat (int) - PK
        * id_usuario (int) - FK para Usuário
        * id_item (int) - FK para Item
        * mensagem (string)
        * data_hora_envio (data) - Automática

### Relacionamentos:

* Um usuário pode criar vários itens.
* Um item pode estar em vários chats.
* Um usuário pode participar de vários chats.
* Um chat se refere a um usuário e um item específicos.

### Observações:

* A tabela `Usuario` possui um atributo `tipo_usuario` que indica se o usuário é comum ou administrador.
* A tabela `Item` possui um atributo `ativo` que indica se o item está ativo ou inativo.
* A tabela `Chat` possui atributos `id_usuario` e `id_item` que referem-se aos IDs dos usuários e itens envolvidos na conversa.
* A tabela `Chat` também possui atributos `mensagem` e `data_hora_envio` que armazenam as mensagens e a data/hora de envio das mesmas.


