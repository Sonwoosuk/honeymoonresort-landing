import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import { fileURLToPath, URL } from 'node:url'

// base: './'  -> 빌드 결과가 어느 경로에 올라가도 asset 링크가 깨지지 않음 (GitHub Pages 등)
// alias       -> import 시 상대경로 지옥 없이 '@', '@assets' 로 접근
export default defineConfig({
  plugins: [react()],
  base: './',
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url)),
      '@assets': fileURLToPath(new URL('./src/assets', import.meta.url)),
    },
  },
})
