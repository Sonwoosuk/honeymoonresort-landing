import { Routes, Route } from 'react-router-dom'
import Nav from '@/components/Nav.jsx'
import Footer from '@/components/Footer.jsx'
import Home from '@/pages/Home.jsx'
import DesignGuide from '@/pages/DesignGuide.jsx'

export default function App() {
  return (
    <>
      <Nav />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/design-guide" element={<DesignGuide />} />
      </Routes>
      <Footer />
    </>
  )
}
