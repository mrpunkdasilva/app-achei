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
