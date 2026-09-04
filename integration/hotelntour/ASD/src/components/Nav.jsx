import { Link, useLocation } from 'react-router-dom'

export default function Nav() {
  const { pathname } = useLocation()
  return (
    <header className="nav">
      <div className="wrap nav__inner">
        <Link to="/" className="nav__logo">ASD<span>.</span></Link>
        <nav className="nav__links">
          <Link to="/" className={pathname === '/' ? 'is-active' : ''}>놀이터</Link>
          <Link
            to="/design-guide"
            className={pathname === '/design-guide' ? 'is-active' : ''}
          >
            디자인 가이드
          </Link>
        </nav>
      </div>
    </header>
  )
}
