import { Link } from 'react-router-dom'

export default function Footer() {
  return (
    <footer className="foot">
      <div className="wrap foot__inner">
        <span>ASD 놀이터 — React + Vite 데모</span>
        <Link to="/design-guide">디자인 가이드 →</Link>
      </div>
    </footer>
  )
}
