import { useState } from 'react'

const CARDS = [
  { front: '납작', back: '그림자는 번지지 않고 딱 떨어지게. box-shadow: 6px 6px 0.' },
  { front: '단색', back: '색은 네 가지면 충분해요. 빨강·파랑·노랑·초록, 그리고 종이색.' },
  { front: '통일', back: '서체는 Pretendard 하나로. 이탤릭도, 세리프 킥커도 없이.' },
]

export default function FlipCards() {
  const [flipped, setFlipped] = useState(null)

  return (
    <section className="section cards">
      <div className="wrap">
        <h2 className="h2">뒤집으면 나오는 이야기</h2>
        <p className="muted">마우스를 올리거나, 눌러서 뒤집어요.</p>

        <div className="cards__grid">
          {CARDS.map((card, i) => (
            <button
              key={i}
              className={'flip' + (flipped === i ? ' is-flipped' : '')}
              onClick={() => setFlipped(flipped === i ? null : i)}
              aria-pressed={flipped === i}
            >
              <span className="flip__inner">
                <span className="flip__face flip__front">{card.front}</span>
                <span className="flip__face flip__back">{card.back}</span>
              </span>
            </button>
          ))}
        </div>
      </div>
    </section>
  )
}
