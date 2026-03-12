# Neovim Keymaps - Guia Rápido

> **Leader key:** `<Space>`
> **Dica:** `<leader>ch` abre o cheatsheet interativo

---

## Movimentação (Modo Normal)

### Básico
| Tecla | Ação |
|-------|------|
| `h j k l` | Esquerda, baixo, cima, direita |
| `w` | Próxima palavra (início) |
| `e` | Próxima palavra (fim) |
| `b` | Palavra anterior |
| `W` / `E` / `B` | Mesmo que acima, ignora pontuação |

### Linha
| Tecla | Ação |
|-------|------|
| `0` | Início da linha |
| `^` | Primeiro caractere não-branco |
| `$` | Fim da linha |
| `f{char}` | Pula para próximo `{char}` na linha |
| `F{char}` | Pula para `{char}` anterior na linha |
| `t{char}` | Pula até antes do `{char}` |
| `;` | Repete último f/F/t/T |

### Arquivo
| Tecla | Ação |
|-------|------|
| `gg` | Início do arquivo |
| `G` | Fim do arquivo |
| `{n}G` | Ir para linha `n` |
| `:{n}` | Ir para linha `n` |
| `Ctrl+d` | Meia página para baixo |
| `Ctrl+u` | Meia página para cima |
| `Ctrl+f` | Página inteira para baixo |
| `Ctrl+b` | Página inteira para cima |
| `%` | Ir para parêntese/chave correspondente |

### Busca
| Tecla | Ação |
|-------|------|
| `/{texto}` | Buscar texto para frente |
| `?{texto}` | Buscar texto para trás |
| `n` | Próxima ocorrência |
| `N` | Ocorrência anterior |
| `*` | Buscar palavra sob cursor (próxima) |
| `#` | Buscar palavra sob cursor (anterior) |

---

## Seleção (Modo Visual)

### Entrar no Modo Visual
| Tecla | Ação |
|-------|------|
| `v` | Modo visual (caractere) |
| `V` | Modo visual (linha inteira) |
| `Ctrl+v` | Modo visual (bloco/coluna) |

### Selecionar Texto
| Tecla | Ação |
|-------|------|
| `v` + movimento | Seleciona conforme move |
| `viw` | Selecionar palavra |
| `vi"` | Selecionar dentro de aspas |
| `vi'` | Selecionar dentro de aspas simples |
| `vi(` ou `vib` | Selecionar dentro de parênteses |
| `vi{` ou `viB` | Selecionar dentro de chaves |
| `vi[` | Selecionar dentro de colchetes |
| `vit` | Selecionar dentro de tag HTML |
| `vap` | Selecionar parágrafo |
| `vaw` | Selecionar palavra + espaço |
| `va"` | Selecionar incluindo aspas |
| `va(` | Selecionar incluindo parênteses |

### Seleções Rápidas
| Tecla | Ação |
|-------|------|
| `ggVG` | Selecionar arquivo inteiro |
| `V$` | Selecionar até fim da linha |
| `V}` | Selecionar até fim do parágrafo |
| `gv` | Re-selecionar última seleção |

---

## Copiar, Colar e Deletar

### Copiar (Yank)
| Tecla | Ação |
|-------|------|
| `yy` | Copiar linha inteira |
| `y$` | Copiar até fim da linha |
| `yw` | Copiar palavra |
| `yiw` | Copiar palavra (sem espaço) |
| `yi"` | Copiar dentro de aspas |
| `y` (visual) | Copiar seleção |
| `"+y` | Copiar para clipboard do sistema |
| `Ctrl+c` | Copiar arquivo inteiro (custom) |

### Colar (Paste)
| Tecla | Ação |
|-------|------|
| `p` | Colar depois do cursor |
| `P` | Colar antes do cursor |
| `"+p` | Colar do clipboard do sistema |

### Deletar
| Tecla | Ação |
|-------|------|
| `dd` | Deletar linha (e copiar) |
| `d$` ou `D` | Deletar até fim da linha |
| `dw` | Deletar palavra |
| `diw` | Deletar palavra |
| `di"` | Deletar dentro de aspas |
| `di(` | Deletar dentro de parênteses |
| `x` | Deletar caractere |
| `X` | Deletar caractere anterior |
| `"_dd` | Deletar linha sem copiar |
| `"_d` | Deletar sem copiar (black hole) |

### Recortar
| Tecla | Ação |
|-------|------|
| `d` + movimento | Recortar (deletar + copiar) |
| `x` | Recortar caractere |

---

## Edição de Texto

### Inserir
| Tecla | Ação |
|-------|------|
| `i` | Inserir antes do cursor |
| `I` | Inserir no início da linha |
| `a` | Inserir depois do cursor |
| `A` | Inserir no fim da linha |
| `o` | Nova linha abaixo |
| `O` | Nova linha acima |
| `ea` | Inserir no fim da palavra |

### Substituir
| Tecla | Ação |
|-------|------|
| `r{char}` | Substituir caractere por `{char}` |
| `R` | Modo substituição (sobrescreve) |
| `cw` | Deletar palavra e entrar insert |
| `ciw` | Mudar palavra inteira |
| `ci"` | Mudar dentro de aspas |
| `ci(` | Mudar dentro de parênteses |
| `cc` ou `S` | Mudar linha inteira |
| `C` | Mudar até fim da linha |
| `s` | Deletar caractere e inserir |

### Maiúsculas/Minúsculas
| Tecla | Ação |
|-------|------|
| `~` | Alternar maiúscula/minúscula |
| `gUw` | Palavra para MAIÚSCULA |
| `guw` | Palavra para minúscula |
| `gUU` | Linha para MAIÚSCULA |
| `guu` | Linha para minúscula |

### Indentação
| Tecla | Ação |
|-------|------|
| `>>` | Indentar linha |
| `<<` | Remover indentação |
| `>` (visual) | Indentar seleção |
| `<` (visual) | Remover indentação seleção |
| `=` | Auto-indentar |
| `gg=G` | Auto-indentar arquivo inteiro |

### Outros
| Tecla | Ação |
|-------|------|
| `u` | Desfazer (undo) |
| `Ctrl+r` | Refazer (redo) |
| `.` | Repetir última ação |
| `J` | Juntar linha atual com próxima |
| `xp` | Trocar caracteres de lugar |
| `ddp` | Trocar linhas de lugar |

---

## Arquivos e Buffers (Abas)

| Tecla | Ação |
|-------|------|
| `Tab` | Próximo buffer (aba) |
| `Shift+Tab` | Buffer anterior |
| `<leader>x` | Fechar buffer atual |
| `<leader>b` | Novo buffer vazio |
| `Ctrl+s` | Salvar arquivo |
| `:w` | Salvar |
| `:q` | Sair |
| `:wq` ou `:x` | Salvar e sair |
| `:q!` | Sair sem salvar |

---

## Buscar Arquivos (Telescope)

| Tecla | Ação |
|-------|------|
| `<leader>ff` | Buscar arquivos |
| `<leader>fa` | Buscar todos (incluindo ocultos) |
| `<leader>fw` | Buscar texto no projeto (grep) |
| `<leader>fb` | Listar buffers abertos |
| `<leader>fo` | Arquivos recentes |
| `<leader>fz` | Buscar no arquivo atual |
| `<leader>fh` | Buscar na documentação |

---

## Explorador de Arquivos (NvimTree)

| Tecla | Ação |
|-------|------|
| `Ctrl+n` | Abrir/fechar árvore |
| `<leader>e` | Focar na árvore |

**Dentro da árvore:**
| Tecla | Ação |
|-------|------|
| `Enter` | Abrir arquivo |
| `a` | Criar arquivo/pasta |
| `d` | Deletar |
| `r` | Renomear |
| `c` / `p` | Copiar / Colar |
| `x` | Cortar |
| `o` | Abrir em split |
| `v` | Abrir em split vertical |
| `H` | Toggle arquivos ocultos |

---

## Janelas (Splits)

| Tecla | Ação |
|-------|------|
| `Ctrl+h` | Ir para janela esquerda |
| `Ctrl+l` | Ir para janela direita |
| `Ctrl+j` | Ir para janela abaixo |
| `Ctrl+k` | Ir para janela acima |
| `:vs` | Split vertical |
| `:sp` | Split horizontal |
| `Ctrl+w =` | Igualar tamanho das janelas |
| `Ctrl+w _` | Maximizar altura |
| `Ctrl+w |` | Maximizar largura |
| `Ctrl+w r` | Rotacionar janelas |
| `Ctrl+w q` | Fechar janela |

### Redimensionar Janelas
| Tecla | Ação |
|-------|------|
| `Ctrl+w +` | Aumentar altura |
| `Ctrl+w -` | Diminuir altura |
| `Ctrl+w >` | Aumentar largura |
| `Ctrl+w <` | Diminuir largura |
| `:resize N` | Definir altura para N linhas |
| `:vertical resize N` | Definir largura para N colunas |
| `5 Ctrl+w +` | Aumentar altura em 5 linhas |

---

## Terminal

| Tecla | Ação |
|-------|------|
| `Alt+i` | Terminal flutuante |
| `Alt+h` | Terminal horizontal |
| `Alt+v` | Terminal vertical |
| `<leader>h` | Novo terminal horizontal |
| `<leader>v` | Novo terminal vertical |
| `<leader>tt` | Esconder/mostrar todos os terminais |
| `<leader>pt` | Listar terminais ocultos (Telescope) |
| `Ctrl+x` | Sair do modo terminal |

---

## LSP (Código Inteligente)

| Tecla | Ação |
|-------|------|
| `gd` | Ir para definição |
| `gD` | Ir para declaração |
| `gr` | Ver referências |
| `gi` | Ir para implementação |
| `K` | Documentação (hover) |
| `<leader>ca` | Code actions (correções) |
| `<leader>ra` | Renomear símbolo |
| `<leader>fm` | Formatar código |
| `<leader>lf` | Ver erro flutuante |
| `[d` / `]d` | Erro anterior/próximo |
| `<leader>D` | Ver tipo da definição |
| `<leader>ls` | Ajuda de assinatura |

---

## Git

| Tecla | Ação |
|-------|------|
| `<leader>cm` | Ver commits |
| `<leader>gt` | Git status |
| `<leader>gb` | Blame da linha |
| `<leader>ph` | Preview do hunk |
| `<leader>rh` | Reset hunk |
| `<leader>td` | Toggle linhas deletadas |
| `]c` / `[c` | Próximo/anterior hunk |

---

## Comentários

| Tecla | Ação |
|-------|------|
| `<leader>/` | Comentar/descomentar linha |
| `<leader>/` (visual) | Comentar seleção |

---

## Outros

| Tecla | Ação |
|-------|------|
| `Esc` | Limpar highlights de busca |
| `<leader>n` | Toggle números de linha |
| `<leader>rn` | Toggle números relativos |
| `<leader>th` | Trocar tema |
| `<leader>ch` | Abrir cheatsheet |
| `<leader>wK` | Ver todos os keymaps |
| `<leader>ma` | Ver bookmarks |

---

## Marcas (Bookmarks)

| Tecla | Ação |
|-------|------|
| `m{a-z}` | Criar marca local |
| `m{A-Z}` | Criar marca global |
| `'{a-z}` | Ir para marca |
| `` `{a-z} `` | Ir para posição exata da marca |
| `:marks` | Listar todas as marcas |
| `<leader>ma` | Ver marcas (Telescope) |

---

## Macros

| Tecla | Ação |
|-------|------|
| `q{a-z}` | Iniciar gravação de macro |
| `q` | Parar gravação |
| `@{a-z}` | Executar macro |
| `@@` | Repetir última macro |
| `10@a` | Executar macro 'a' 10 vezes |

---

## Modo Insert

| Tecla | Ação |
|-------|------|
| `Ctrl+b` | Ir para início da linha |
| `Ctrl+e` | Ir para fim da linha |
| `Ctrl+h/j/k/l` | Navegar sem sair do insert |
| `Ctrl+w` | Deletar palavra anterior |
| `Ctrl+u` | Deletar até início da linha |
| `Ctrl+o` | Executar um comando normal |
| `Esc` ou `Ctrl+[` | Voltar para modo normal |

---

## Combinações Úteis

| Comando | Ação |
|---------|------|
| `ciw` | Mudar palavra sob cursor |
| `ci"` | Mudar texto entre aspas |
| `di(` | Deletar dentro de parênteses |
| `yap` | Copiar parágrafo |
| `dap` | Deletar parágrafo |
| `viwp` | Substituir palavra com texto copiado |
| `ggVGy` | Copiar arquivo inteiro |
| `gg=G` | Indentar arquivo inteiro |
| `:%s/old/new/g` | Substituir em todo arquivo |
| `:5,10s/old/new/g` | Substituir nas linhas 5-10 |

---

## Git Avançado (Lazygit)

| Tecla | Ação |
|-------|------|
| `<leader>gg` | Abrir Lazygit |
| `<leader>td` | Toggle linhas deletadas |

---

## Docker (Lazydocker)

| Tecla | Ação |
|-------|------|
| `<leader>ld` | Abrir Lazydocker |

---

## Go

| Tecla | Ação |
|-------|------|
| `<leader>gr` | `go run` arquivo atual |
| `<leader>gR` | `go run .` |
| `<leader>gT` | `go test ./...` |
| `<leader>gB` | `go build .` |

---

## Flutter

| Tecla | Ação |
|-------|------|
| `<leader>fr` | `flutter run` |
| `<leader>fR` | `flutter run --release` |
| `<leader>fT` | `flutter test` |
| `<leader>fB` | `flutter build apk` |
| `<leader>fc` | `flutter clean` |
| `<leader>fp` | `flutter pub get` |

---

## Node / Package Managers

> Padrão: `j` + gerenciador (`n/p/y/b`) + ação (`R/T/B/i`)

| Tecla | Ação |
|-------|------|
| `<leader>jr` | `node` arquivo atual |
| | |
| `<leader>jnR` | `npm run dev` |
| `<leader>jnT` | `npm test` |
| `<leader>jnB` | `npm run build` |
| `<leader>jni` | `npm install` |
| | |
| `<leader>jpR` | `pnpm run dev` |
| `<leader>jpT` | `pnpm test` |
| `<leader>jpB` | `pnpm run build` |
| `<leader>jpi` | `pnpm install` |
| | |
| `<leader>jyR` | `yarn dev` |
| `<leader>jyT` | `yarn test` |
| `<leader>jyB` | `yarn build` |
| `<leader>jyi` | `yarn install` |
| | |
| `<leader>jbR` | `bun run dev` |
| `<leader>jbT` | `bun test` |
| `<leader>jbB` | `bun run build` |
| `<leader>jbi` | `bun install` |

---

## AI Autocomplete (Supermaven)

| Tecla | Ação |
|-------|------|
| `Tab` | Aceitar sugestão |
| `Ctrl+j` | Aceitar próxima palavra |
| `Ctrl+]` | Limpar sugestão |
| `<leader>tc` | Toggle autocomplete |

---

## WezTerm

| Tecla | Ação |
|-------|------|
| `Cmd+t` | Nova aba |
| `Cmd+d` | Split horizontal |
| `Cmd+Shift+d` | Split vertical |
| `Cmd+Opt+Setas` | Navegar entre painéis |
| `Cmd+w` | Fechar painel/aba |
| `Cmd+=` | Aumentar fonte |
| `Cmd+-` | Diminuir fonte |
| `Cmd+0` | Resetar fonte |

---

## Terminal — Aliases Flutter

```bash
ios        # Abre iOS Simulator + flutter run
android    # Abre Android (Medium Phone) + flutter run
emulators  # Lista emuladores disponíveis
devices    # Lista devices conectados
```

---

## Workflow Recomendado

1. **Abrir projeto:** `nvim .` no terminal
2. **Buscar arquivo:** `<leader>ff`
3. **Navegar código:** `gd` (definição), `gr` (referências)
4. **Editar:** fazer alterações
5. **Salvar:** `Ctrl+s`
6. **Trocar buffer:** `Tab` / `Shift+Tab`
7. **Terminal:** `Alt+i` para comandos rápidos

---

## Dicas de Ouro

- **Números multiplicam:** `5j` = move 5 linhas para baixo
- **Operador + Movimento:** `d` + `w` = deletar palavra
- **Text Objects:** `i` = inside, `a` = around
- **`.` é poderoso:** repete a última edição
- **`*` e `#`:** busca rápida da palavra sob cursor
