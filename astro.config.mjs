import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

export default defineConfig({
  integrations: [tailwind()],
  server: {
    host: true
  },
  vite: {
    server: {
      watch: {
        usePolling: true, // Força o Docker no Windows a detectar mudanças de arquivo
        interval: 100     // Verifica mudanças a cada 100 milissegundos
      }
    }
  }
});
