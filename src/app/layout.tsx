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
