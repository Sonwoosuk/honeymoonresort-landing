import { useState } from 'react'
import star from '@assets/star.svg'
import squiggle from '@assets/squiggle.svg'

const THEMES = [
  { key: 'red', label: '빨강' },
  { key: 'blue', label: '파랑' },
  { key: 'yellow', label: '노랑' },
  { key: 'green', label: '초록' },
]

const HEADLINE = ['누르면', '색이', '바뀌는', '조금', '시끄러운', '페이지']

export default function Hero() {
  const [theme, setTheme] = useState('red')

  function pick(key) {
    setTheme(key)
    if (key === 'red') delete document.documentElement.dataset.theme
    else document.documentElement.dataset.theme = key
  }

  return (
    <section className="hero section">
      <div className="wrap">
        <span className="eyebrow">ASD 놀이터</span>

        <h1 className="hero__title">
          {HEADLINE.map((word, i) => (
            <span className="hero__word" key={i} style={{ '--i': i }}>
              {word}&nbsp;
            </span>
          ))}
        </h1>

        <p className="hero__lead">
          그라데이션 없이, 납작한 색과 두꺼운 테두리만으로 만든 React 3 섹션
          데모예요. 아래 버튼으로 포인트 색을 바꿔보세요.
        </p>

        <div className="hero__controls">
          {THEMES.map((t) => (
            <button
              key={t.key}
              className={'chip' + (theme === t.key ? ' is-on' : '')}
              onClick={() => pick(t.key)}
            >
              {t.label}
            </button>
          ))}
        </div>

        <img className="hero__star" src={star} alt="" aria-hidden="true" />
        <img className="hero__squiggle" src={squiggle} alt="" aria-hidden="true" />
      </div>
    </section>
  )
}
