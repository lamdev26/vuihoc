import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import tailwindcss from '@tailwindcss/vite'

// https://vite.dev/config/
export default defineConfig({
  base: './', // Hỗ trợ chạy mượt mà trên GitHub Pages ở bất kỳ đường dẫn repository nào
  plugins: [
    react(),
    tailwindcss()
  ],
})
