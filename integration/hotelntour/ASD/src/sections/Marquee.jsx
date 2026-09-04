const ROW_A = ['납작하게', '두껍게', '시끄럽게', '그라데이션 금지', 'PRETENDARD', '하드 섀도우']
const ROW_B = ['REACT', '세 개의 섹션', 'asset 라우팅', '디자인 토큰', '재미있게', '굴러간다']

function Row({ items, reverse = false }) {
  const doubled = [...items, ...items]
  return (
    <div className={'marquee__row' + (reverse ? ' marquee__row--rev' : '')}>
      <div className="marquee__track">
        {doubled.map((text, i) => (
          <span className="marquee__item" key={i}>
            {text}
            <i className="dot" />
          </span>
        ))}
      </div>
    </div>
  )
}

export default function Marquee() {
  return (
    <section className="section marq">
      <div className="wrap">
        <h2 className="h2">끝없이 굴러가는 문장</h2>
        <p className="muted">위에 마우스를 올리면 멈춰요.</p>
      </div>
      <Row items={ROW_A} />
      <Row items={ROW_B} reverse />
    </section>
  )
}
