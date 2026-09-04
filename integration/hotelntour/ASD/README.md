# ASD 놀이터

그라데이션 없이, 납작한 색과 두꺼운 테두리만으로 만든 **React 3 섹션** 데모.
기본 서체는 **Pretendard**.

## 실행

```bash
cd ASD
npm install
npm run dev        # 개발 서버
npm run build      # dist/ 로 정적 빌드
npm run preview    # 빌드 결과 미리보기
```

## 3 섹션

| 섹션 | 파일 | 재미 요소 |
|------|------|-----------|
| Hero | `src/sections/Hero.jsx` | 헤드라인 단어 순차 등장 + hover 흔들림, 버튼으로 포인트 색 4종 전환 |
| Marquee | `src/sections/Marquee.jsx` | 두 줄이 반대 방향으로 무한 스크롤, hover 시 정지 |
| FlipCards | `src/sections/FlipCards.jsx` | 카드 3장 hover / 클릭으로 3D 뒤집기 |

`/#/design-guide` 라우트에 디자인 가이드 페이지가 따로 있다.

## 폴더 구조

```
ASD/
├─ index.html            # 진입 HTML
├─ vite.config.js        # base './' + alias(@, @assets)
├─ public/
│  └─ favicon.svg        # 가공 없이 그대로 복사되는 정적 asset
└─ src/
   ├─ main.jsx           # 엔트리, HashRouter, CSS import
   ├─ App.jsx            # 라우트 정의
   ├─ assets/            # 번들에 포함되는 asset (import 해서 사용)
   │  ├─ star.svg
   │  └─ squiggle.svg
   ├─ components/        # Nav, Footer
   ├─ pages/             # Home, DesignGuide
   ├─ sections/          # Hero, Marquee, FlipCards
   └─ styles/
      ├─ tokens.css      # 디자인 토큰 (색·타이포·간격·모양) — 값은 여기서만
      ├─ global.css      # Pretendard import, 리셋, 공통 클래스
      └─ app.css         # 컴포넌트/섹션 스타일
```

## Asset & 라우트 설정

- **번들 asset**: `src/assets/*` → `import star from '@assets/star.svg'` 처럼 import.
  해시가 붙어 `dist/assets/` 로 출력된다.
- **정적 asset**: `public/*` → 가공 없이 루트로 복사. 코드에서는 `./favicon.svg`.
- **base**: `vite.config.js` 의 `base: './'` — 어느 하위 경로에 배포해도 링크가 안 깨짐.
- **alias**: `@` → `src`, `@assets` → `src/assets`. 상대경로 `../../` 안 씀.
- **라우팅**: `react-router-dom` + `HashRouter` (`/#/`, `/#/design-guide`).
  정적 호스팅에서 새로고침 404가 안 난다.

## 디자인 가이드 (요약)

전체 규칙은 앱 안의 **디자인 가이드** 페이지 참고.

- **색**: 잉크 `#14110F` / 종이 `#F5F1E8` + 포인트 1색(`--c-accent`). 전부 단색.
- **서체**: Pretendard 하나. 이탤릭 · 세리프 킥커 · "01" 번호 안 씀.
- **모양**: 2px 솔리드 테두리, 번지지 않는 하드 섀도우 `6px 6px 0`.
- **간격**: 8pt 스케일 (`--s-1` ~ `--s-12`).
- **모션**: 0.12–0.5s, `prefers-reduced-motion` 존중.
- **대비**: 본문 4.5:1 이상.
