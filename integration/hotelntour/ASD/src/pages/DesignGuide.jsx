const PALETTE = [
  { name: '잉크', hex: '#14110F', token: '--c-ink' },
  { name: '종이', hex: '#F5F1E8', token: '--c-paper' },
  { name: '종이 2', hex: '#ECE5D4', token: '--c-paper-2' },
  { name: '빨강', hex: '#FF5230', token: '--c-accent (red)' },
  { name: '파랑', hex: '#2E5BFF', token: '--c-accent (blue)' },
  { name: '노랑', hex: '#FFC93C', token: '--c-accent (yellow)' },
  { name: '초록', hex: '#16A34A', token: '--c-accent (green)' },
]

const TYPE = [
  { cls: 't-display', sample: 'Display', note: 'clamp(2.5–6rem) · 800 · 헤드라인' },
  { cls: 't-h1', sample: '섹션 제목 H1', note: 'clamp(2–3.5rem) · 800' },
  { cls: 't-h2', sample: '섹션 제목 H2', note: 'clamp(1.5–2.25rem) · 800' },
  { cls: 't-body', sample: '본문 텍스트입니다. 줄간 1.6.', note: '1rem · 400–600' },
  { cls: 't-small', sample: '보조 라벨', note: '0.8125rem · 700' },
]

const SPACE = [
  ['--s-1', '0.5rem'], ['--s-2', '1rem'], ['--s-3', '1.5rem'],
  ['--s-4', '2rem'], ['--s-6', '3rem'], ['--s-8', '5rem'], ['--s-12', '8rem'],
]

const RULES = [
  '그라데이션·글로우·블러 금지. 색은 항상 단색으로 채운다.',
  '서체는 Pretendard 하나. 이탤릭, 세리프 킥커, "01" 번호 매기기는 쓰지 않는다.',
  '테두리는 2px 솔리드 잉크, 그림자는 번지지 않는 하드 섀도우(6px 6px 0).',
  '포인트 색은 한 화면에 하나. --c-accent 토큰만 교체해서 테마를 바꾼다.',
  '본문 대비는 4.5:1 이상. 잉크(#14110F) / 종이(#F5F1E8) 조합 기준.',
  '모션은 짧게(0.12–0.5s), prefers-reduced-motion을 존중한다.',
]

export default function DesignGuide() {
  return (
    <main className="wrap guide">
      <h1 className="guide__title">디자인 가이드</h1>
      <p className="guide__intro">
        ASD 놀이터가 따르는 규칙. 값은 전부 <code>src/styles/tokens.css</code> 의
        CSS 변수에서 온다.
      </p>

      <section className="guide__section">
        <h2>원칙</h2>
        <ul className="rules">
          {RULES.map((r, i) => <li key={i}>{r}</li>)}
        </ul>
      </section>

      <section className="guide__section">
        <h2>색</h2>
        <div className="swatches">
          {PALETTE.map((c) => (
            <div className="swatch" key={c.token}>
              <div className="swatch__c" style={{ background: c.hex }} />
              <div className="swatch__l">
                {c.name} · {c.hex}
                <small>{c.token}</small>
              </div>
            </div>
          ))}
        </div>
      </section>

      <section className="guide__section">
        <h2>타이포그래피</h2>
        {TYPE.map((t) => (
          <div className="type-row" key={t.cls}>
            <div className={t.cls}>{t.sample}</div>
            <p>{t.note}</p>
          </div>
        ))}
      </section>

      <section className="guide__section">
        <h2>간격 (8pt 스케일)</h2>
        <div className="scale">
          {SPACE.map(([token, val]) => (
            <span key={token}>{token} · {val}</span>
          ))}
        </div>
      </section>

      <section className="guide__section">
        <h2>컴포넌트</h2>
        <div className="specimen">
          <button className="chip">칩 / 기본</button>
          <button className="chip is-on">칩 / 선택됨</button>
          <span className="tag">태그</span>
          <span className="eyebrow">아이브로우</span>
        </div>
      </section>
    </main>
  )
}
