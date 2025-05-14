#!/bin/bash

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🚀 Iniciando setup da estrutura do projeto...${NC}"

# Remover arquivos e diretórios padrão do Next.js
echo -e "${RED}🗑️  Removendo arquivos padrão...${NC}"
rm -rf ./src/app/*
rm -rf ./public/*
rm -rf ./styles/*

# Criar estrutura de diretórios principal
echo -e "${GREEN}📁 Criando estrutura de diretórios...${NC}"

# Core Layer
mkdir -p ./src/core/entities
mkdir -p ./src/core/use-cases
mkdir -p ./src/core/repositories

# Infrastructure Layer
mkdir -p ./src/infrastructure/api
mkdir -p ./src/infrastructure/services
mkdir -p ./src/infrastructure/repositories
mkdir -p ./src/infrastructure/firebase

# Presentation Layer
mkdir -p ./src/presentation/components
mkdir -p ./src/presentation/composables
mkdir -p ./src/presentation/layouts
mkdir -p ./src/presentation/pages

# Shared Layer
mkdir -p ./src/shared/types
mkdir -p ./src/shared/utils
mkdir -p ./src/shared/constants

# Criar arquivos base
echo -e "${GREEN}📝 Criando arquivos base...${NC}"

# Core Layer - Entities
cat > ./src/core/entities/User.ts << EOF
export interface User {
  id: string;
  fullName: string;
  email: string;
  avatar?: string;
  accessLevel: 'common' | 'admin';
}
EOF

cat > ./src/core/entities/Item.ts << EOF
export interface Item {
  id: string;
  uniqueCode: string;
  name: string;
  isActive: boolean;
  observation: string;
  createdAt: Date;
  updatedAt: Date;
  qrCode: string;
  photo: string;
}
EOF

# Infrastructure Layer - Firebase
cat > ./src/infrastructure/firebase/config.ts << EOF
export const firebaseConfig = {
  // Suas configurações do Firebase aqui
};
EOF

# Presentation Layer - Layout
cat > ./src/presentation/layouts/MainLayout.tsx << EOF
import React from 'react';

export const MainLayout: React.FC<{ children: React.ReactNode }> = ({ children }) => {
  return (
    <div>
      <header>
        {/* Header content */}
      </header>
      <main>{children}</main>
      <footer>
        {/* Footer content */}
      </footer>
    </div>
  );
};
EOF

# App Root
cat > ./src/app/layout.tsx << EOF
import { MainLayout } from '@/presentation/layouts/MainLayout';

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="pt-BR">
      <body>
        <MainLayout>{children}</MainLayout>
      </body>
    </html>
  );
}
EOF

cat > ./src/app/page.tsx << EOF
export default function Home() {
  return (
    <main>
      <h1>Projeto Achei</h1>
    </main>
  );
}
EOF

# Shared Layer - Constants
cat > ./src/shared/constants/app.ts << EOF
export const APP_NAME = 'Achei';
export const APP_VERSION = '1.0.0';
EOF

# Atualizar .gitignore
echo -e "${GREEN}📝 Atualizando .gitignore...${NC}"
cat >> ./.gitignore << EOF

# Firebase
.firebase/
*.log

# Environment
.env*
!.env.example

# Build
.next/
out/
dist/
build/

# Coverage
coverage/

# IDE
.vscode/
.idea/
EOF

echo -e "${BLUE}✨ Setup completo! Estrutura do projeto criada com sucesso.${NC}"
echo -e "${GREEN}🎉 Você pode começar a desenvolver seu projeto agora.${NC}"

# Instruções finais
echo -e "\n${BLUE}Próximos passos:${NC}"
echo -e "1. Configure suas variáveis de ambiente (copie .env.example para .env)"
echo -e "2. Configure o Firebase no arquivo src/infrastructure/firebase/config.ts"
echo -e "3. Execute 'npm run dev' para iniciar o servidor de desenvolvimento"