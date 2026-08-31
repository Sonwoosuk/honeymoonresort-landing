<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 모바일 웹앱(MOBLIE/ROOT)에는 JSTL 이 없을 수 있어 taglib 를 쓰지 않습니다.
     이 페이지는 허니문리조트 모바일 전용이라 사이트명/도메인을 하드코딩합니다. --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<meta name="format-detection" content="telephone=no" />
<meta name="travel" content="허니문리조트" />
<meta name="keywords" content="허니문리조트, 신혼여행, 허니문, 신혼여행 전문 여행사, 허니문리조트 회사소개, 하와이 신혼여행, 몰디브 신혼여행, 발리 신혼여행" />
<meta name="author" content="허니문리조트" />
<meta http-equiv="Cache-Control" content="No-store, No-cache, Must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Imagetoolbar" content="no">
<!-- <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests"> -->

<link rel="shortcut icon" href="/new_ver/img/hnt_tab_logo.png">
<title>회사소개 | 허니문리조트 - 1995년부터 신혼여행 전문 여행사</title>
<meta name="description" content="허니문리조트는 1995년부터 신혼여행을 전문으로 안내해 온 허니문 전문 여행사입니다. 서울 청담동 본사와 전국 13개 지사, 100명 이상의 임직원이 하와이·몰디브·발리 등 신혼여행지 상담부터 예약, 현지 소통까지 함께합니다." />
<%-- 모바일 페이지는 PC URL을 대표(canonical)로 지정 --%>
<link rel="canonical" href="https://new.honeymoonresort.co.kr/company/company.do" />
<meta property="og:type" content="website" />
<meta property="og:site_name" content="허니문리조트" />
<meta property="og:title" content="회사소개 | 허니문리조트" />
<meta property="og:description" content="1995년부터 신혼여행만 전문으로. 전국 13개 지사, 100명 이상 임직원 기반의 허니문 전문 여행사." />
<meta property="og:url" content="https://new.honeymoonresort.co.kr/m/company_info.do" />
<meta property="og:image" content="https://new.honeymoonresort.co.kr/new_ver/img/company-intro/hero-main.jpg" />
<meta name="twitter:card" content="summary_large_image" />
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "TravelAgency",
  "name": "허니문리조트",
  "description": "1995년부터 신혼여행을 전문으로 하는 허니문 전문 여행사",
  "foundingDate": "1995",
  "url": "https://new.honeymoonresort.co.kr",
  "logo": "https://new.honeymoonresort.co.kr/new_ver/img/company-intro/logo/honeymoonresort-logo.png",
  "image": "https://new.honeymoonresort.co.kr/new_ver/img/company-intro/hero-main.jpg",
  "address": {
    "@type": "PostalAddress",
    "addressLocality": "서울",
    "addressRegion": "서울",
    "addressCountry": "KR"
  },
  "areaServed": ["하와이", "몰디브", "발리", "칸쿤", "코사무이", "푸켓", "유럽", "스페인", "이탈리아", "프랑스", "호주"],
  "numberOfEmployees": { "@type": "QuantitativeValue", "minValue": 100 }
}
</script>
<%-- ============================================================
   모바일 전용: PC용 CSS(default/component/main_new 등)와 fancybox·
   jquery-ui 는 로드하지 않습니다. 본문은 아래 <style> 블록으로 자립하고,
   include 되는 모바일 헤더/푸터(../layout/header_new.jsp · footer.jsp)는
   기존 모바일 페이지와 동일하게 index.css + jQuery 로 스타일/동작합니다.
============================================================ --%>
<link rel="stylesheet" type="text/css" href="./css/index.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<!-- Facebook Pixel Code (모바일) -->
<script>
 !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
 n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
 n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
 t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
 document,'script','https://connect.facebook.net/en_US/fbevents.js');
 fbq('init', '162246964396993');
 fbq('track', "PageView");</script>
 <noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=162246964396993&ev=PageView&noscript=1" /></noscript>
 <!-- End Facebook Pixel Code -->

<!-- ============================================================
   회사소개 페이지 전용 CSS (Pretendard 폰트 + hero/awards/... 섹션)
============================================================= -->
<link rel="stylesheet" as="style" crossorigin
  href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/static/pretendard.css" />

<!-- 증서·감사패 사진을 같은 페이지 위에서 크게 보기 위한 Fancybox (PC 버전과 동일) -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.css" />
<script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.umd.js"></script>


<style>
/* =============================================================
   회사소개 페이지 · 모바일 전용 스타일 (m.honeymoonresort / /m/)
   - PC 버전(company.jsp)의 반응형 CSS를 걷어내고, 모바일 화면
     한 가지만을 위해 새로 구성한 스타일입니다.
   - 클래스명은 PC 버전과 100% 동일하게 유지하므로 <body> 마크업은
     그대로 재사용합니다. (콘텐츠/구조 변경 없음)
   - 기준 폭: 320~480px 스마트폰. 큰 폰/태블릿에서는 본문을
     520px로 고정해 가운데 정렬합니다.
   - 폰트: Pretendard, 색상 변수는 PC 버전과 동일.
============================================================= */

/* reset 은 .hr-page 안으로만 한정합니다. (include 되는 모바일
   header_new.jsp / footer.jsp 의 자체 스타일을 건드리지 않기 위함) */
.hr-page,
.hr-page * {
  box-sizing: border-box;
}

.hr-page {
  margin: 0;
  padding: 0;
  background-color: #fbf9f6;
  -webkit-font-smoothing: antialiased;
  text-rendering: optimizeLegibility;
  word-break: keep-all;
  overflow-wrap: break-word;
  -webkit-text-size-adjust: 100%;
  overflow-x: hidden;
}

/* :where() 로 감싸 우선순위를 0 으로 만듭니다. 그래야 아래의
   .section-title / .hero / .awards__intro 같은 한 클래스 규칙이
   이 리셋을 정상적으로 덮어씁니다. (예전엔 `.hr-page section` 의
   우선순위가 더 높아 섹션 상하 여백·제목 여백이 전부 0 으로 씹혔음) */
.hr-page :where(h1, h2, h3, h4, p, ul, ol, li, figure, section) {
  margin: 0;
  padding: 0;
}

.hr-page ul, .hr-page ol { list-style: none; }

.hr-page h1,
.hr-page h2,
.hr-page h3 { text-wrap: balance; }
.hr-page p { text-wrap: pretty; }

.hr-page img { max-width: 100%; }

:root {
  --hero-color-bg:        #ffffff;
  --hero-color-surface:   #f8f2ea;
  --hero-color-border:    #e6d9c6;

  --hero-color-ink:       #2b1f16;
  --hero-color-body:      #6b5c4c;
  --hero-color-gold:      #8a6847;
  --hero-color-gold-soft: #b79a7a;
  --hero-color-accent:    #f9c359;
  --hero-color-on-accent: #2b1f16;

  --hero-color-overlay:   rgba(43, 31, 22, 0.84);
  --hero-color-on-overlay:      #ffffff;
  --hero-color-on-overlay-dim:  #d9c7ae;

  --hero-font: "Pretendard", -apple-system, BlinkMacSystemFont,
               "Malgun Gothic", sans-serif;

  /* 모바일 공통 좌우 여백 */
  --m-gutter: 20px;
}

/* 실제 사이트 default.css 의 전역 * { font-family } 를 이기기 위해
   .hr-page * 로 specificity 를 올립니다. */
.hr-page,
.hr-page * {
  font-family: var(--hero-font);
}

/* 모든 섹션 공통: 큰 폰/태블릿에서 본문이 과하게 넓어지지 않도록 */
.hero__inner,
.statement__inner,
.scale__inner,
.awards__inner,
.process__inner,
.custom__inner,
.verified__inner,
.youtube__inner,
.celeb__inner,
.expo__inner,
.contact__inner,
.brand__inner,
.safety__inner {
  width: 100%;
  max-width: 520px;
  margin: 0 auto;
  padding: 0 var(--m-gutter);
  box-sizing: border-box;
}

/* =============================================================
   공용 유틸 (.section-title / .text-stack)
============================================================= */
.section-title {
  margin: 0 0 32px;
  font-size: 22px;
  font-weight: 700;
  line-height: 1.4;
  letter-spacing: -0.02em;
  color: var(--hero-color-ink);
  text-align: center;
}

.text-stack {
  display: flex;
  flex-direction: column;
  gap: 16px;
  max-width: 100%;
  margin: 0 auto;
}

.text-stack p {
  margin: 0;
  font-size: 14px;
  line-height: 1.8;
  letter-spacing: -0.01em;
  color: var(--hero-color-body);
  text-align: left;
}

.text-stack--2col {
  display: block;
}

.text-stack--2col p {
  margin: 0;
  text-align: left;
}

/* 모바일에서는 문단 안의 의도적 줄바꿈(<br>)이 어색하게 끊기므로 무시 */
.hero__intro p br,
.awards__intro br,
.awards__outro br,
.youtube__text p br,
.youtube__collab br,
.celeb__note p br {
  display: none;
}

/* =============================================================
   섹션 배경 리듬 (PC와 동일하게 교차)
============================================================= */
.hero,
.scale,
.process,
.verified,
.celeb,
.contact,
.safety {
  background-color: var(--hero-color-bg);
}

.awards,
.custom,
.youtube,
.expo,
.brand {
  background-color: var(--hero-color-surface);
}

.hero,
.scale,
.awards,
.process,
.custom,
.verified,
.youtube,
.celeb,
.expo,
.contact,
.brand,
.safety {
  width: 100%;
  font-family: var(--hero-font);
  padding: 64px 0;
  box-sizing: border-box;
}

/* 섹션이 서로 확실히 나뉘어 보이도록: 넉넉한 상하 여백 + 눈에 보이는 구분선.
   배경색이 비슷한 구간(흰색↔크림색)에서도 경계가 분명하게 읽힙니다. */
.hr-page > section + section {
  border-top: 1px solid var(--hero-color-border);
}

/* statement(짙은 배경) 섹션은 그 자체로 강한 구분이 되므로 선은 뺍니다 */
.hr-page > .statement + section,
.hr-page > section + .statement {
  border-top: none;
}

/* =============================================================
   HERO
============================================================= */
.hero {
  padding: 0 0 52px;
}

.hero__banner {
  position: relative;
  width: 100%;
  overflow: hidden;
  margin-bottom: 24px;
}

.hero__banner-slides {
  position: relative;
  width: 100%;
}

.hero__banner-slide {
  position: relative;
  width: 100%;
}

/* 원본 비율 그대로 노출 (잘림 없음). 세로가 너무 길면
   max-height 로만 살짝 제한하고 그때만 cover 로 중앙 크롭 */
.hero__banner-image {
  width: 100%;
  height: auto;
  max-height: 62vh;
  display: block;
  object-fit: cover;
  object-position: center;
}

/* 텍스트를 이미지 위에 겹치지 않고 이미지 바로 아래 띠로 배치
   (겹치면 배너 하단이 가려져서 사진이 잘 안 보임) */
.hero__banner-overlay {
  position: static;
  z-index: 2;
  background-color: var(--hero-color-overlay);
  padding: 16px var(--m-gutter);
  box-sizing: border-box;
}

.hero__banner-eyebrow {
  display: inline-block;
  margin-bottom: 8px;
  color: var(--hero-color-accent);
  font-weight: 700;
  font-size: 12px;
  letter-spacing: 0.04em;
}

.hero__banner-headline {
  margin: 0;
  font-size: 15px;
  font-weight: 600;
  line-height: 1.55;
  letter-spacing: -0.01em;
  color: var(--hero-color-on-overlay);
}

.hero__intro {
  margin: 0 auto;
}

.hero__intro p {
  margin: 0;
  font-size: 14px;
  line-height: 1.85;
  color: var(--hero-color-body);
  letter-spacing: -0.01em;
  text-align: left;
}

/* =============================================================
   STATEMENT (브랜드 워드마크)
============================================================= */
.statement {
  position: relative;
  width: 100%;
  background-color: var(--hero-color-ink);
  font-family: var(--hero-font);
  padding: 52px 0;
  box-sizing: border-box;
  overflow: hidden;
}

.statement__inner {
  text-align: center;
}

.statement__logo {
  display: inline-block;
  width: 72%;
  max-width: 260px;
  height: auto;
}

/* =============================================================
   SCALE (규모)
============================================================= */
.scale__title {
  margin: 0 0 32px;
  font-size: 22px;
  font-weight: 700;
  line-height: 1.4;
  letter-spacing: -0.02em;
  color: var(--hero-color-ink);
  text-align: center;
}

.scale__stats {
  display: flex;
  flex-direction: column;
  align-items: stretch;
  gap: 12px;
  margin-bottom: 22px;
}

.scale__stat {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 6px;
  padding: 20px 16px;
  background-color: var(--hero-color-surface);
  border: 1px solid var(--hero-color-border);
  border-radius: 16px;
  box-shadow: 0 8px 18px rgba(43, 31, 22, 0.08);
  box-sizing: border-box;
}

.scale__stat-number {
  margin: 0;
  font-size: 36px;
  font-weight: 700;
  line-height: 1.1;
  letter-spacing: -0.02em;
  color: var(--hero-color-gold);
}

.scale__stat-number span {
  font-size: 17px;
  font-weight: 600;
  margin-left: 2px;
}

.scale__stat-label {
  margin: 0;
  font-size: 13px;
  font-weight: 600;
  color: var(--hero-color-body);
  text-align: center;
}

.scale__desc {
  margin: 0 auto 20px;
  font-size: 14px;
  line-height: 1.8;
  letter-spacing: -0.01em;
  color: var(--hero-color-body);
  text-align: left;
}

.scale__map {
  display: block;
  margin: 4px auto 20px;
  max-width: 260px;
  width: 100%;
  height: auto;
}

.scale__cities {
  margin: 0;
  font-size: 13px;
  line-height: 1.8;
  color: var(--hero-color-ink);
  text-align: center;
}

.scale__cities-label {
  display: block;
  margin-bottom: 6px;
  font-weight: 600;
  color: var(--hero-color-ink);
}

.scale__cities-list {
  color: var(--hero-color-body);
}

/* =============================================================
   AWARDS (수상 타임라인) — 모바일은 좌측 라인 단일 컬럼
============================================================= */
.awards__title {
  margin: 0 0 28px;
  font-size: 22px;
  font-weight: 700;
  line-height: 1.4;
  letter-spacing: -0.02em;
  color: var(--hero-color-ink);
  text-align: center;
}

.awards__intro {
  margin: 0 auto 28px;
  font-size: 14px;
  line-height: 1.8;
  letter-spacing: -0.01em;
  color: var(--hero-color-body);
  text-align: left;
}

.awards__timeline {
  position: relative;
  margin: 8px 0 24px;
  padding: 4px 0;
}

.awards__timeline::before {
  content: '';
  position: absolute;
  top: 6px;
  bottom: 6px;
  left: 19px;
  width: 1px;
  background: var(--hero-color-border);
}

.awards__timeline-item,
.awards__timeline-item:nth-child(odd),
.awards__timeline-item:nth-child(even) {
  position: relative;
  left: 0;
  width: 100%;
  text-align: left;
  box-sizing: border-box;
  padding: 0 0 24px 52px;
}

.awards__timeline-item:last-child {
  padding-bottom: 0;
}

.awards__timeline-node,
.awards__timeline-item:nth-child(odd) .awards__timeline-node,
.awards__timeline-item:nth-child(even) .awards__timeline-node {
  position: absolute;
  top: 0;
  left: -2px;
  right: auto;
  width: 42px;
  height: 42px;
  border-radius: 50%;
  background: var(--hero-color-bg);
  border: 1px solid var(--hero-color-gold);
  display: flex;
  align-items: center;
  justify-content: center;
  font-weight: 700;
  font-size: 10px;
  line-height: 1.15;
  letter-spacing: -0.02em;
  text-align: center;
  color: var(--hero-color-gold);
  z-index: 1;
}

.awards__timeline-list {
  margin: 0;
  padding: 8px 0 0;
  list-style: none;
  display: flex;
  flex-direction: column;
  gap: 5px;
}

.awards__timeline-list li,
.awards__timeline-item:nth-child(odd) .awards__timeline-list li {
  position: relative;
  padding-left: 12px;
  padding-right: 0;
  font-size: 13px;
  line-height: 1.65;
  color: var(--hero-color-ink);
}

.awards__timeline-list li::before,
.awards__timeline-item:nth-child(odd) .awards__timeline-list li::before {
  content: '';
  position: absolute;
  top: 0.7em;
  left: 0;
  right: auto;
  width: 4px;
  height: 4px;
  border-radius: 50%;
  background: var(--hero-color-gold);
}

.awards__timeline-photos,
.awards__timeline-item:nth-child(odd) .awards__timeline-photos,
.awards__timeline-item:nth-child(even) .awards__timeline-photos {
  display: flex;
  gap: 8px;
  margin-top: 12px;
  flex-wrap: wrap;
  justify-content: flex-start;
}

.awards__timeline-photo {
  width: 96px;
  height: 96px;
  object-fit: contain;
  box-sizing: border-box;
  padding: 6px;
  background: var(--hero-color-bg);
  border: 1px solid var(--hero-color-border);
  border-radius: 8px;
  box-shadow: 0 5px 12px rgba(43, 31, 22, 0.08);
}

/* 사진을 누르면 같은 페이지 위 오버레이(Fancybox)로 감사패/트로피/인증서 원본이 크게 열립니다 */
.awards__photo-link {
  display: inline-block;
  font-size: 0;
  line-height: 0;
  border-radius: 8px;
  cursor: zoom-in;
  -webkit-tap-highlight-color: transparent;
}

.awards__outro {
  margin: 0 auto;
  font-size: 14px;
  line-height: 1.8;
  letter-spacing: -0.01em;
  color: var(--hero-color-body);
  text-align: left;
}

/* =============================================================
   이미지 카드 그리드 (목적지 / 셀럽) — 모바일 2열, 기울기 제거
============================================================= */
.image-card-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 12px;
}

.image-card,
.image-card:nth-child(3n+2),
.image-card:nth-child(3n+3) {
  flex: none;
  display: flex;
  flex-direction: column;
  gap: 8px;
  background-color: var(--hero-color-bg);
  border: 1px solid var(--hero-color-border);
  padding: 8px 8px 12px;
  box-sizing: border-box;
  box-shadow: 0 8px 18px rgba(43, 31, 22, 0.1);
  transform: none;
}

.image-card__image {
  width: 100%;
  aspect-ratio: 4 / 3;
  background-color: var(--hero-color-surface);
  display: flex;
  align-items: center;
  justify-content: center;
  box-sizing: border-box;
  overflow: hidden;
}

.image-card__photo {
  width: 100%;
  height: 100%;
  display: block;
  object-fit: cover;
}

.image-card__caption {
  margin: 0;
  font-size: 12px;
  font-weight: 600;
  line-height: 1.4;
  color: var(--hero-color-ink);
  text-align: center;
}

/* =============================================================
   PROCESS (5단계) — 세로 목록
============================================================= */
.process__steps {
  position: relative;
  display: flex;
  flex-direction: column;
  align-items: stretch;
  gap: 12px;
  margin-top: 20px;
  margin-bottom: 28px;
}

.process__step {
  position: relative;
  flex: none;
  display: flex;
  flex-direction: row;
  align-items: center;
  gap: 12px;
}

.process__step:not(:last-child)::after,
.process__step::after {
  content: none;
  display: none;
}

.process__step-number {
  width: 44px;
  height: 44px;
  flex: none;
  border-radius: 50%;
  background-color: var(--hero-color-gold);
  color: var(--hero-color-bg);
  font-size: 17px;
  font-weight: 700;
  display: flex;
  align-items: center;
  justify-content: center;
}

.process__step-label {
  font-size: 14px;
  font-weight: 600;
  line-height: 1.5;
  color: var(--hero-color-ink);
  text-align: left;
  padding: 0;
}

/* =============================================================
   CUSTOM (맞춤 신혼여행)
============================================================= */
.custom__destinations-label {
  margin: 28px 0 16px;
  font-size: 14px;
  font-weight: 700;
  color: var(--hero-color-ink);
  text-align: center;
}

/* =============================================================
   VERIFIED (검증된 회사)
============================================================= */
.verified__badge-wrap {
  display: flex;
  justify-content: center;
  margin-bottom: 24px;
}

.verified__badge {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  padding: 7px 14px;
  border: 1px solid var(--hero-color-border);
  border-radius: 999px;
  background-color: var(--hero-color-surface);
  font-size: 12px;
  font-weight: 600;
  color: var(--hero-color-gold);
  text-align: center;
  line-height: 1.4;
  white-space: normal;
}

.verified__boards-label {
  margin: 4px 0 16px;
  font-size: 12px;
  font-weight: 600;
  letter-spacing: 0.04em;
  color: var(--hero-color-body);
  text-align: center;
}

.verified__boards {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 10px;
  margin: 0 auto 34px;
  padding: 0;
  list-style: none;
}

.verified__boards li {
  padding: 9px 14px;
  border: 1px solid var(--hero-color-border);
  border-radius: 999px;
  background-color: var(--hero-color-surface);
  font-size: 12px;
  line-height: 1.3;
  color: var(--hero-color-body);
  white-space: nowrap;
}

.verified__grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 12px;
}

.verified__card {
  background-color: var(--hero-color-surface);
  border: 1px solid var(--hero-color-border);
  border-radius: 16px;
  box-shadow: 0 8px 18px rgba(43, 31, 22, 0.08);
  padding: 20px 18px;
  box-sizing: border-box;
  display: flex;
  flex-direction: column;
  gap: 8px;
}

.verified__card-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 10px;
}

.verified__card-logo {
  height: 24px;
  width: auto;
  object-fit: contain;
}

/* 'amazing THAILAND' 로고는 2줄 스택형이라 더 크게 표시 */
.verified__card-logo--stack {
  height: 40px;
}

.verified__card-years {
  flex: none;
  padding: 4px 10px;
  border-radius: 999px;
  background-color: var(--hero-color-bg);
  border: 1px solid var(--hero-color-border);
  font-size: 11px;
  font-weight: 600;
  color: var(--hero-color-gold);
  white-space: nowrap;
}

.verified__card-title {
  font-size: 15px;
  font-weight: 700;
  color: var(--hero-color-gold);
}

.verified__card-desc {
  font-size: 13px;
  line-height: 1.8;
  color: var(--hero-color-body);
}

/* =============================================================
   YOUTUBE
============================================================= */
.youtube__text {
  margin-bottom: 20px;
}

.youtube__text p {
  text-align: center;
}

.youtube__videos {
  display: grid;
  grid-template-columns: 1fr;
  gap: 14px;
  margin-bottom: 24px;
}

.youtube__video-thumb {
  position: relative;
  aspect-ratio: 16 / 9;
  background-color: var(--hero-color-bg);
  border: 1px solid var(--hero-color-border);
  border-radius: 16px;
  box-shadow: 0 8px 18px rgba(43, 31, 22, 0.08);
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
  box-sizing: border-box;
  text-decoration: none;
}

.youtube__video-image {
  position: absolute;
  inset: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.youtube__play {
  position: relative;
  z-index: 1;
  width: 0;
  height: 0;
  border-top: 11px solid transparent;
  border-bottom: 11px solid transparent;
  border-left: 18px solid var(--hero-color-bg);
  filter: drop-shadow(0 1px 3px rgba(0, 0, 0, 0.5));
}

.youtube__collab {
  margin: 0 auto;
  font-size: 13px;
  line-height: 1.8;
  color: var(--hero-color-body);
  text-align: center;
}

/* =============================================================
   CELEB (셀러브리티)
============================================================= */
.celeb__lead {
  margin: 0 0 28px;
  font-size: 14px;
  font-weight: 600;
  color: var(--hero-color-ink);
  text-align: center;
}

.celeb__inner .image-card-grid {
  margin-bottom: 28px;
}

.celeb__note {
  padding-top: 22px;
  border-top: 1px solid var(--hero-color-border);
}

.celeb__note p {
  text-align: center;
}

/* =============================================================
   EXPO (박람회)
============================================================= */
.expo__stats {
  display: flex;
  flex-direction: column;
  align-items: stretch;
  gap: 12px;
  margin-bottom: 22px;
}

.expo__stat {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 6px;
  padding: 18px 16px;
  background-color: var(--hero-color-bg);
  border: 1px solid var(--hero-color-border);
  border-radius: 16px;
  box-shadow: 0 8px 18px rgba(43, 31, 22, 0.08);
  box-sizing: border-box;
}

.expo__stat-number {
  margin: 0;
  font-size: 26px;
  font-weight: 700;
  line-height: 1.1;
  letter-spacing: -0.02em;
  color: var(--hero-color-gold);
  text-align: center;
}

.expo__stat-label {
  margin: 0;
  font-size: 15px;
  font-weight: 600;
  color: var(--hero-color-body);
  text-align: center;
}

.expo__gallery {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 8px;
  margin: 24px 0;
}

.expo__gallery-photo {
  width: 100%;
  aspect-ratio: 4 / 3;
  display: block;
  object-fit: cover;
  border-radius: 14px;
  box-shadow: 0 8px 18px rgba(43, 31, 22, 0.08);
}

/* =============================================================
   CONTACT (예약 후 소통)
============================================================= */
.contact__grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 12px;
}

.contact__card {
  background-color: var(--hero-color-surface);
  border: 1px solid var(--hero-color-border);
  border-radius: 16px;
  box-shadow: 0 8px 18px rgba(43, 31, 22, 0.08);
  padding: 20px 18px;
  box-sizing: border-box;
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.contact__card-title {
  font-size: 15px;
  font-weight: 700;
  color: var(--hero-color-gold);
}

.contact__card-desc {
  font-size: 13px;
  line-height: 1.8;
  color: var(--hero-color-body);
}

/* =============================================================
   BRAND (브랜드 확장)
============================================================= */
.brand__intro {
  margin-bottom: 22px;
}

.brand__intro p {
  text-align: center;
}

.brand__grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 12px;
}

.brand__card {
  background-color: var(--hero-color-bg);
  border: 1px solid var(--hero-color-border);
  border-radius: 16px;
  box-shadow: 0 8px 18px rgba(43, 31, 22, 0.08);
  padding: 20px 18px;
  box-sizing: border-box;
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.brand__card-logo {
  width: 100%;
  height: 28px;
  display: flex;
  align-items: center;
  justify-content: center;
  box-sizing: border-box;
  overflow: hidden;
}

.brand__card-logo-image {
  max-width: 100%;
  max-height: 100%;
  display: block;
  object-fit: contain;
}

.brand__card-name {
  font-size: 15px;
  font-weight: 700;
  color: var(--hero-color-gold);
}

.brand__card-desc {
  font-size: 13px;
  line-height: 1.8;
  color: var(--hero-color-body);
}

/* =============================================================
   SAFETY (안전)
============================================================= */
.safety {
  padding: 64px 0 76px;
}

.safety__intro {
  margin-bottom: 24px;
}

.safety__intro p {
  text-align: center;
}

.safety__badges {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 12px;
  margin-bottom: 24px;
}

.safety__badge {
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 8px;
}

.safety__badge-image {
  width: 100%;
  aspect-ratio: 3 / 4;
  background-color: var(--hero-color-bg);
  border: 1px solid var(--hero-color-border);
  border-radius: 10px;
  box-shadow: 0 6px 14px rgba(43, 31, 22, 0.08);
  box-sizing: border-box;
  padding: 6px;
  overflow: hidden;
}

/* 증서 배지를 누르면 같은 페이지 위 오버레이(Fancybox)로 원본이 크게 열립니다 */
a.safety__badge-image {
  display: block;
  text-decoration: none;
  cursor: zoom-in;
  -webkit-tap-highlight-color: transparent;
}

.safety__badge-image img {
  width: 100%;
  height: 100%;
  display: block;
  object-fit: contain;
}

.safety__badge-caption {
  margin: 0;
  font-size: 12px;
  font-weight: 600;
  color: var(--hero-color-gold);
  text-align: center;
  line-height: 1.4;
}

/* =============================================================
   스크롤 등장 애니메이션
============================================================= */
.js-reveal {
  opacity: 0;
  transform: translateY(16px);
  transition: opacity 0.6s ease, transform 0.6s ease;
}

.js-reveal.is-visible {
  opacity: 1;
  transform: translateY(0);
}

@media (prefers-reduced-motion: reduce) {
  .js-reveal {
    opacity: 1;
    transform: none;
    transition: none;
  }
}

/* =============================================================
   풀블리드 배너 (실제 사이트 .wrap 안에 넣을 때)
============================================================= */
.hero__banner {
  position: relative;
  width: 100vw;
  left: 50%;
  right: 50%;
  margin-left: -50vw;
  margin-right: -50vw;
  overflow: hidden;
}

/* =============================================================
   데스크톱/큰 화면에서 열었을 때: 모바일 컬럼을 가운데로 고정해
   좌우가 허전하지 않도록 카드처럼 프레임 처리합니다.
   (실제 스마트폰 화면 폭에서는 아래 규칙이 적용되지 않습니다.)
============================================================= */
@media (min-width: 540px) {
  .hr-page {
    max-width: 480px;
    margin-left: auto;
    margin-right: auto;
    box-shadow: 0 0 60px rgba(43, 31, 22, 0.13);
  }

  /* 풀블리드 배너도 컬럼 폭에 맞춥니다 (100vw 로 삐져나오지 않도록) */
  .hero__banner {
    width: 100%;
    left: auto;
    right: auto;
    margin-left: 0;
    margin-right: 0;
  }
}
</style>

</head>
<body>

<%-- 모바일 레이아웃 include. 기존 모바일 회사소개(company_info.jsp)와
     동일한 경로 규칙입니다. 서버의 실제 파일명이 다르면 여기만 맞추세요. --%>
<jsp:include page="../layout/header_new.jsp"></jsp:include>

<div class="hr-page">

<!-- ============================================================
   HERO SECTION
   실제 사이트에 적용할 때는 아래 <section class="hero">...</section>
   블록만 복사해서 원하는 위치(헤더 바로 아래)에 붙여넣으면 됩니다.
   <style> 내용도 함께 옮기거나, 기존 CSS 파일에 그대로 합치면 됩니다.
============================================================= -->

<section class="hero">

  <!-- 화면에는 보이지 않는 페이지 대표 제목(h1): 스크린리더 & 검색엔진용 -->
  <h1 style="position:absolute;width:1px;height:1px;margin:-1px;padding:0;overflow:hidden;clip:rect(0 0 0 0);white-space:nowrap;border:0;">허니문리조트 회사소개 - 1995년부터 신혼여행을 전문으로 하는 허니문 전문 여행사</h1>

  <!-- 풀와이드 배너 (.hero__inner 컨테이너 밖에 배치 -> 좌우 여백 없이 화면 전체 폭으로 표시
       // 오가닉 블롭 프레임 없이 각진 사각형 + CSS 전용 자동 슬라이드, 임시 플레이스홀더 3장) + 하단 좌측 텍스트 -->
  <div class="hero__banner">
    <div class="hero__banner-slides">
      <!-- TODO: 실제 이미지로 교체 (현재는 임시 플레이스홀더 이미지) -->
      <div class="hero__banner-slide">
        <img class="hero__banner-image" src="/new_ver/img/company-intro/hero-main.jpg" alt="허니문리조트 몰디브 디가리 리조트 전경">
      </div>
    </div>

    <div class="hero__banner-overlay">
      <span class="hero__banner-eyebrow">EST</span>
      <p class="hero__banner-headline">허니문리조트는 1995년부터 신혼여행을 전문으로 맞춤여행으로 안내드린 허니문 전문 여행사입니다.</p>
    </div>
  </div>

  <div class="hero__inner">

    <!-- 배너 하단: 나머지 소개 문단 (제공된 텍스트 그대로 사용) -->
    <div class="hero__intro">
      <p>신혼여행은 인생에 한 번뿐인 특별한 여행입니다. 어디로 갈지, 어떤 리조트를 선택할지, 항공과 일정은 어떻게 구성할지, 현지에서 어떤 시간을 보낼지에 따라 신혼여행의 만족도가 달라집니다. 예비부부의 예산, 일정, 여행 스타일에 맞춰 항공, 호텔, 투어, 현지 일정을 함께 구성하며 두 사람에게 맞는 신혼여행을 설계합니다.<br>대표적인 휴양지인 하와이 신혼여행, 몰디브 신혼여행, 발리 신혼여행, 칸쿤 신혼여행, 코사무이 신혼여행, 푸켓 신혼여행 외에도 관광과 휴양이 가능한 유럽 신혼여행, 스페인 신혼여행, 이탈리아 신혼여행, 프랑스 신혼여행, 호주 신혼여행 등 인기 신혼여행지를 중심으로 다양한 상품과 상담 노하우를 축적해왔으며, 신혼여행지 선택부터 예약 이후 소통까지 신혼여행 준비 전 과정을 함께합니다.<br>허니문리조트는 오랜 상담 경험을 바탕으로 예비부부가 원하는 신혼여행의 컨셉 & 분위기와 현실적인 조건을 함께 살펴보고, 가장 어울리는 신혼여행 일정을 제안합니다.</p>
    </div>

  </div>
</section>

<!-- ============================================================
   SCALE SECTION ("허니문리조트 어느정도 규모 회사?")
   실제 사이트에 적용할 때는 아래 <section class="scale">...</section>
   블록만 복사해서 히어로 섹션 다음 위치에 붙여넣으면 됩니다.
============================================================= -->

<section class="scale">
  <div class="scale__inner">

    <h2 class="scale__title">허니문리조트는 어느 정도 규모의 회사인가요?</h2>

    <div class="scale__stats">
      <div class="scale__stat">
        <p class="scale__stat-number">13<span>개</span></p>
        <p class="scale__stat-label">지역 지사 (B2B&nbsp;&amp;&nbsp;B2C)</p>
      </div>
      <div class="scale__stat">
        <p class="scale__stat-number">100<span>명+</span></p>
        <p class="scale__stat-label">임직원 운영 기반</p>
      </div>
    </div>

    <p class="scale__desc">허니문리조트는 서울 청담동 본사를 중심으로 13개 지역 지사와 100명 이상의 임직원 운영 기반을 갖춘 허니문 전문 여행사입니다. 서울 본사와 천안, 대전, 대구, 포항, 울산, 부산, 창원, 전주, 광주, 진주, 순천, 제주, 하와이 등 국내외 상담 네트워크를 운영하며 B2C 신혼여행 상담과 B2B 여행 사업을 함께 운영하고 있습니다.</p>

    <img class="scale__map" src="/new_ver/img/company-intro/branch-map.png" alt="허니문리조트 지사 네트워크 지도: 서울 본사, 천안, 대전, 대구, 포항, 울산, 부산, 창원, 전주, 광주, 순천, 제주, 하와이">

    <p class="scale__cities">
      <span class="scale__cities-label">지사 네트워크</span>
      <span class="scale__cities-list">서울 본사 · 천안 · 대전 · 대구 · 포항 · 울산 · 부산 · 창원 · 전주 · 광주 · 진주 · 순천 · 제주 · 하와이</span>
    </p>

  </div>
</section>

<!-- ============================================================
   AWARDS SECTION ("허니문리조트에서 호텔·리조트를 예약하면 어떤 장점?")
   실제 사이트에 적용할 때는 아래 <section class="awards">...</section>
   블록만 복사해서 원하는 위치에 붙여넣으면 됩니다.
============================================================= -->

<section class="awards">
  <div class="awards__inner">

    <h2 class="awards__title">허니문리조트에서 호텔·리조트를 예약하면 어떤 장점이 있나요?</h2>

    <p class="awards__intro">허니문리조트는 대한민국 기업으로서, 수년간 글로벌 하이엔드 호텔·리조트의 높은 판매 실적을 쌓아왔습니다.<br>이를 바탕으로 각국 유명 호텔 브랜드와 긴밀한 파트너십을 구축했으며, 일부 호텔·리조트의 독점 특가와 단독 신혼여행 전용 프로모션을 제공하고 있습니다.</p>

    <div class="awards__timeline">
      <div class="awards__timeline-item">
        <div class="awards__timeline-node">2013</div>
        <ul class="awards__timeline-list">
          <li>태국관광청 세일즈 미션 수상</li>
        </ul>
      </div>
      <div class="awards__timeline-item">
        <div class="awards__timeline-node">2015</div>
        <ul class="awards__timeline-list">
          <li>스타우드 코리아 세일즈 어워드</li>
        </ul>
      </div>
      <div class="awards__timeline-item">
        <div class="awards__timeline-node">2017</div>
        <ul class="awards__timeline-list">
          <li>더 웨스틴 마우이 리조트&nbsp;&amp;&nbsp;스파(카아나팔리) 세일즈 우수 감사패 수상</li>
        </ul>
        <div class="awards__timeline-photos">
          <a class="awards__photo-link" data-fancybox="awards" href="/new_ver/img/company-intro/awards/2017-westin-maui.jpg" data-caption="더 웨스틴 마우이 리조트 & 스파 세일즈 우수 감사패"><img class="awards__timeline-photo" src="/new_ver/img/company-intro/awards/2017-westin-maui.jpg" alt="더 웨스틴 마우이 리조트 & 스파 세일즈 우수 감사패"></a>
        </div>
      </div>
      <div class="awards__timeline-item">
        <div class="awards__timeline-node">2020</div>
        <ul class="awards__timeline-list">
          <li>경영혁신형 중소기업(Main-Biz) 인증 획득</li>
        </ul>
        <div class="awards__timeline-photos">
          <a class="awards__photo-link" data-fancybox="awards" href="/new_ver/img/company-intro/awards/2020-mainbiz-certificate.jpg" data-caption="경영혁신형 중소기업 Main-Biz 확인서"><img class="awards__timeline-photo" src="/new_ver/img/company-intro/awards/2020-mainbiz-certificate.jpg" alt="경영혁신형 중소기업 Main-Biz 확인서"></a>
        </div>
      </div>
      <div class="awards__timeline-item">
        <div class="awards__timeline-node">2022</div>
        <ul class="awards__timeline-list">
          <li>쉐라톤 와이키키 아시아 세일즈 우수 감사패 수상</li>
        </ul>
        <div class="awards__timeline-photos">
          <a class="awards__photo-link" data-fancybox="awards" href="/new_ver/img/company-intro/awards/2022-sheraton-waikiki.jpg" data-caption="쉐라톤 와이키키 아시아 세일즈 우수 감사패"><img class="awards__timeline-photo" src="/new_ver/img/company-intro/awards/2022-sheraton-waikiki.jpg" alt="쉐라톤 와이키키 아시아 세일즈 우수 감사패"></a>
        </div>
      </div>
      <div class="awards__timeline-item">
        <div class="awards__timeline-node">2023</div>
        <ul class="awards__timeline-list">
          <li>쉐라톤 와이키키 아시아 세일즈&nbsp;1위</li>
          <li>하와이 알로힐라니 리조트 와이키키 비치 호텔 최우수 세일즈 선정</li>
          <li>릴리 비치 리조트&nbsp;&amp;&nbsp;스파 아시아 세일즈&nbsp;1위(Top Selling Korean Partner)</li>
        </ul>
        <div class="awards__timeline-photos">
          <a class="awards__photo-link" data-fancybox="awards" href="/new_ver/img/company-intro/awards/2023-sheraton-waikiki-turtle.png" data-caption="쉐라톤 와이키키 아시아 세일즈 1위 감사패"><img class="awards__timeline-photo" src="/new_ver/img/company-intro/awards/2023-sheraton-waikiki-turtle.png" alt="쉐라톤 와이키키 아시아 세일즈 1위 감사패"></a>
          <a class="awards__photo-link" data-fancybox="awards" href="/new_ver/img/company-intro/awards/2023-lily-beach.png" data-caption="릴리 비치 리조트 & 스파 아시아 세일즈 1위 트로피"><img class="awards__timeline-photo" src="/new_ver/img/company-intro/awards/2023-lily-beach.png" alt="릴리 비치 리조트 & 스파 아시아 세일즈 1위 트로피"></a>
        </div>
      </div>
      <div class="awards__timeline-item">
        <div class="awards__timeline-node">2024</div>
        <ul class="awards__timeline-list">
          <li>AVA Resort Cancun 아시아 세일즈&nbsp;1위</li>
          <li>Impression Moxché by Secrets 아시아 세일즈&nbsp;1위</li>
          <li>바카루 몰디브 한국 세일즈&nbsp;1위</li>
          <li>힐튼 몰디브 아밍기리 한국 세일즈&nbsp;1위</li>
          <li>쿠다 빌링길리 한국 세일즈&nbsp;1위</li>
          <li>에메랄드 파루푸시 한국 세일즈&nbsp;1위</li>
        </ul>
        <div class="awards__timeline-photos">
          <a class="awards__photo-link" data-fancybox="awards" href="/new_ver/img/company-intro/awards/2024-vakkaru.jpg" data-caption="바카루 몰디브 한국 세일즈 1위 트로피"><img class="awards__timeline-photo" src="/new_ver/img/company-intro/awards/2024-vakkaru.jpg" alt="바카루 몰디브 한국 세일즈 1위 트로피"></a>
          <a class="awards__photo-link" data-fancybox="awards" href="/new_ver/img/company-intro/awards/2024-emerald-faarufushi.jpg" data-caption="에메랄드 파루푸시 한국 세일즈 1위 트로피"><img class="awards__timeline-photo" src="/new_ver/img/company-intro/awards/2024-emerald-faarufushi.jpg" alt="에메랄드 파루푸시 한국 세일즈 1위 트로피"></a>
        </div>
      </div>
      <div class="awards__timeline-item">
        <div class="awards__timeline-node">2024<br>·2025</div>
        <ul class="awards__timeline-list">
          <li>Expedia TAAP B2B 세일즈 한국&nbsp;1위</li>
        </ul>
        <div class="awards__timeline-photos">
          <a class="awards__photo-link" data-fancybox="awards" href="/new_ver/img/company-intro/awards/2024-2025-expedia-taap.jpg" data-caption="Expedia TAAP 2024 Best Performance Awards 인증서"><img class="awards__timeline-photo" src="/new_ver/img/company-intro/awards/2024-2025-expedia-taap.jpg" alt="Expedia TAAP 2024 Best Performance Awards 인증서"></a>
        </div>
      </div>
      <div class="awards__timeline-item">
        <div class="awards__timeline-node">2025</div>
        <ul class="awards__timeline-list">
          <li>와이키키 비치 메리어트 한국 세일즈&nbsp;1위</li>
          <li>힐튼 와이콜로아 빌리지 한국 세일즈&nbsp;1위</li>
          <li>하와이 하얏트 센트릭 와이키키 아시아 판매&nbsp;1위</li>
        </ul>
      </div>
    </div>

    <p class="awards__outro">이러한 판매 실적과 글로벌 호텔·리조트 파트너십을 바탕으로 글로벌 하이엔드 브랜드인 포시즌스 호텔 7개 지점의 한국 독점 도매 권한을 확보하고 있으며, 이외에도 주메이라, 리딩 호텔 오브 더 월드, 킴튼, 아난타라, 벨몬드 등과도 견고한 파트너십을 운영해 허니문리조트 고객을 위한 대한민국 독점 특가와 프로모션을 제공하고 있습니다.</p>

  </div>
</section>

<!-- ============================================================
   STATEMENT SECTION (대형 브랜드 워드마크)
============================================================= -->

<section class="statement">
  <div class="statement__inner">
    <img class="statement__logo" src="/new_ver/img/company-intro/logo/honeymoonresort-wordmark-white.png" alt="Honeymoon Resort">
  </div>
</section>

<!-- ============================================================
   PROCESS SECTION ("허니문리조트와 준비하는 신혼여행은 어떻게 진행?")
============================================================= -->

<section class="process">
  <div class="process__inner">

    <h2 class="section-title">허니문리조트와 준비하는 신혼여행은 어떻게 진행되나요?</h2>

    <div class="process__steps">
      <div class="process__step">
        <span class="process__step-number">1</span>
        <span class="process__step-label">신혼여행 조건 확인</span>
      </div>
      <div class="process__step">
        <span class="process__step-number">2</span>
        <span class="process__step-label">신혼여행지 및 리조트 비교</span>
      </div>
      <div class="process__step">
        <span class="process__step-number">3</span>
        <span class="process__step-label">항공·호텔·투어 구성</span>
      </div>
      <div class="process__step">
        <span class="process__step-number">4</span>
        <span class="process__step-label">견적 및 일정 확정</span>
      </div>
      <div class="process__step">
        <span class="process__step-number">5</span>
        <span class="process__step-label">예약 후 출발 준비 안내</span>
      </div>
    </div>

    <div class="text-stack">
      <p>상담 시 예식일과 출발일, 희망 신혼여행지, 예산, 선호하는 숙소 스타일, 관광과 휴양의 비중 등을 확인합니다. 이를 바탕으로 호텔·리조트, 투어, 이동 일정 등 고객에게 필요한 항목을 조합해 예비부부에게 맞는 신혼여행을 제안합니다.</p>
      <p>항공, 호텔·리조트, 투어를 모두 함께 예약할 수도 있지만 필요한 상품만 선택해 예약하는 것도 가능합니다. 항공권을 직접 예약한 경우에는 호텔·리조트만 예약할 수 있으며, 고객의 준비 상황에 따라 필요한 부분을 선택해 상담 받을 수 있습니다.</p>
    </div>

  </div>
</section>

<!-- ============================================================
   CUSTOM HONEYMOON SECTION ("허니문리조트의 1:1 맞춤 신혼여행?")
============================================================= -->

<section class="custom">
  <div class="custom__inner">

    <h2 class="section-title">허니문리조트의 1:1 맞춤 신혼여행은 무엇이 다른가요?</h2>

    <div class="text-stack text-stack--2col">
      <p>허니문리조트와 함께하는 1:1 맞춤 신혼여행은 정해진 여행 패키지처럼 여행 루트를 그대로 적용하는 방식이 아니라, 예비부부의 예산·일정·여행 스타일에 따라 항공, 숙박, 투어와 이동 동선을 조합하는 방식입니다. 같은 몰디브라도 수중환경과 객실 타입, 식사 조건, 이동 방식에 따라 최적의 리조트는 달라집니다. 하와이 역시 숙박 지역과 이웃 섬 일정에 따라 여행의 동선과 구성이 크게 달라질 수 있습니다. 일정 구성이 복잡한 유럽도 출·도착 도시(IN–OUT)부터 이용하는 호텔과 리조트의 정확한 명칭까지 투명하게 안내합니다. 허니문리조트는 단순히 여행 상품을 판매하는 데 그치지 않고, 다양한 조건을 꼼꼼하게 비교해 두 사람의 취향과 예산, 여행 방식에 가장 잘 맞는 신혼여행을 제안합니다.</p>
    </div>

    <p class="custom__destinations-label">1:1 맞춤 신혼여행이 가능한 신혼여행지</p>

    <div class="image-card-grid">
      <!-- TODO: 각 카드의 .image-card__image 를 실제 목적지 이미지로 교체 (현재는 임시 플레이스홀더 이미지) -->
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/destinations/hawaii.jpg" alt="하와이 쉐라톤 와이키키 신혼여행"></div>
        <p class="image-card__caption">하와이 신혼여행</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/destinations/maldives.jpg" alt="몰디브 포시즌스 란다기라바루 신혼여행"></div>
        <p class="image-card__caption">몰디브 신혼여행</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/destinations/bali.jpg" alt="발리 리츠칼튼 만다파 신혼여행"></div>
        <p class="image-card__caption">발리 신혼여행</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/destinations/cancun.jpg" alt="칸쿤 스칼렛 아르떼 신혼여행"></div>
        <p class="image-card__caption">칸쿤 신혼여행</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/destinations/kohsamui.jpg" alt="코사무이 반얀트리 신혼여행"></div>
        <p class="image-card__caption">코사무이 신혼여행</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/destinations/phuket.jpg" alt="푸켓 아마타라 신혼여행"></div>
        <p class="image-card__caption">푸켓 신혼여행</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/destinations/europe.jpg" alt="유럽 풀만 파리 에펠 신혼여행"></div>
        <p class="image-card__caption">유럽 신혼여행</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/destinations/spain.jpg" alt="스페인 마요르카 칸 베네잇 신혼여행"></div>
        <p class="image-card__caption">스페인 신혼여행</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/destinations/australia.jpg" alt="호주 시드니 신혼여행"></div>
        <p class="image-card__caption">호주 신혼여행</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/destinations/dubai.jpg" alt="두바이 크라운 플라자 신혼여행"></div>
        <p class="image-card__caption">두바이 신혼여행</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/destinations/mauritius.jpg" alt="모리셔스 포시즌스 수중폭포 신혼여행"></div>
        <p class="image-card__caption">모리셔스 신혼여행</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/destinations/tahiti.jpg" alt="타히티 세인트 레지스 신혼여행"></div>
        <p class="image-card__caption">타히티 신혼여행</p>
      </div>
    </div>

  </div>
</section>

<!-- ============================================================
   VERIFIED COMPANY SECTION ("허니문리조트는 검증된 회사!")
============================================================= -->

<section class="verified">
  <div class="verified__inner">

    <div class="verified__badge-wrap">
      <span class="verified__badge">&#9733; 2026.07 미국관광청 선정 · 글로벌 앰버서더</span>
    </div>

    <h2 class="section-title">허니문리조트는 검증된 회사입니다</h2>

    <div class="text-stack" style="margin-bottom: 34px;">
      <p>허니문리조트는 하와이, 두바이, 호주 퀸즐랜드주, 타히티를 비롯한 13개 관광청과 협업하며 신혼여행 상품을 알리고 고객에게 더 다양한 선택지를 제공해왔습니다. 이렇게 쌓은 글로벌 네트워크와 허니문 전문성을 바탕으로 2026년 7월 미국관광청이 선정한 글로벌 앰버서더에 선정될 만큼, 여행업계 및 아웃바운드 럭셔리·허니문 관광산업에서 검증된 회사로 자리매김했습니다.</p>
    </div>

    <p class="verified__boards-label">함께한 관광청</p>
    <ul class="verified__boards">
      <li>하와이 관광청</li>
      <li>두바이 관광청</li>
      <li>호주 퀸즐랜드주 관광청</li>
      <li>타히티 관광청</li>
      <li>체코 관광청</li>
      <li>모나코 관광청</li>
      <li>몰디브 관광청</li>
      <li>프랑스 관광청</li>
      <li>아부다비 관광청</li>
      <li>카탈루냐 관광청</li>
      <li>미국 관광청</li>
      <li>스페인 관광청</li>
      <li>태국 관광청</li>
    </ul>

    <div class="verified__grid">
      <div class="verified__card">
        <div class="verified__card-header">
          <img class="verified__card-logo" src="/new_ver/img/company-intro/logo/hawaii-tourism-logo.png" alt="Hawaii Tourism Korea">
        </div>
        <p class="verified__card-title">하와이 관광청</p>
        <p class="verified__card-desc">럭셔리 허니문 상품 관련 포시즌스 오아후 앳 코올리나 조식 제공 프로모션, 말라마 허니문 상품 프로모션, 마우이와 빅아일랜드 등 이웃 섬 신혼여행 상품 프로모션을 진행했습니다.</p>
      </div>
      <div class="verified__card">
        <div class="verified__card-header">
          <img class="verified__card-logo" src="/new_ver/img/company-intro/logo/dubai-tourism-logo.png" alt="Dubai Tourism">
          <span class="verified__card-years">2022–2026</span>
        </div>
        <p class="verified__card-title">두바이 관광청</p>
        <p class="verified__card-desc">2022년부터 2026년까지 두바이 신혼여행 1+1 프로모션을 진행했습니다.</p>
      </div>
      <div class="verified__card">
        <div class="verified__card-header">
          <img class="verified__card-logo" src="/new_ver/img/company-intro/logo/queensland-tourism-logo.png" alt="Queensland Australia 관광청">
        </div>
        <p class="verified__card-title">퀸즐랜드주 관광청</p>
        <p class="verified__card-desc">해밀턴 아일랜드 신혼여행지 상품 론칭과 골드코스트 2박 프로모션을 진행했습니다.</p>
      </div>
      <div class="verified__card">
        <div class="verified__card-header">
          <img class="verified__card-logo" src="/new_ver/img/company-intro/logo/tahiti-tourism-logo.png" alt="The Islands of Tahiti">
          <span class="verified__card-years">2023–2026</span>
        </div>
        <p class="verified__card-title">타히티 관광청</p>
        <p class="verified__card-desc">2023년부터 2026년까지 타히티 신혼여행 추가 할인 프로모션을 운영했습니다.</p>
      </div>
      <div class="verified__card">
        <div class="verified__card-header">
          <img class="verified__card-logo" src="/new_ver/img/company-intro/logo/catalonia-tourism-logo.png" alt="Agència Catalana de Turisme, Catalunya 관광청">
        </div>
        <p class="verified__card-title">카탈루냐 관광청</p>
        <p class="verified__card-desc">바르셀로나를 비롯한 카탈루냐 지역 신혼여행 상품과 관련해 협력하고 있습니다.</p>
      </div>
      <div class="verified__card">
        <div class="verified__card-header">
          <img class="verified__card-logo verified__card-logo--stack" src="/new_ver/img/company-intro/logo/thailand-tourism-logo.png" alt="Amazing Thailand">
        </div>
        <p class="verified__card-title">태국관광청</p>
        <p class="verified__card-desc">2013년 태국관광청 세일즈 미션 수상을 비롯해 푸켓, 코사무이 등 태국 주요 신혼여행지 프로모션에 협력하고 있습니다.</p>
      </div>
      <div class="verified__card">
        <div class="verified__card-header">
          <img class="verified__card-logo" src="/new_ver/img/company-intro/logo/monaco-tourism-logo.png" alt="Visit Monaco, 모나코 관광청">
        </div>
        <p class="verified__card-title">모나코 관광청</p>
        <p class="verified__card-desc">모나코 신혼여행 상품과 관련해 협력하고 있습니다.</p>
      </div>
      <div class="verified__card">
        <div class="verified__card-header">
          <img class="verified__card-logo" src="/new_ver/img/company-intro/logo/brand-usa-logo.png" alt="Brand USA, 미국 관광청">
          <span class="verified__card-years">2026</span>
        </div>
        <p class="verified__card-title">미국관광청(Brand USA)</p>
        <p class="verified__card-desc">2026년 7월 미국관광청이 선정하는 글로벌 앰버서더로 선정되어 협력하고 있습니다.</p>
      </div>
    </div>

  </div>
</section>

<!-- ============================================================
   YOUTUBE SECTION ("허니문리조트 유튜브?")
============================================================= -->

<section class="youtube">
  <div class="youtube__inner">

    <h2 class="section-title">허니문리조트 유튜브</h2>

    <div class="text-stack youtube__text">
      <p>허니문리조트는 신혼여행지와 리조트의 실제 모습을 더욱 생생하고 정확하게 전달하기 위해,<br>2018년부터 매주 다양한 유튜브 콘텐츠를 직접 제작해 업로드해 왔습니다.</p>
      <p>직접 현장을 확인하고 제작한 영상은 고객이 충분한 정보를 바탕으로 신혼여행지를 비교하고 선택할 수 있도록 돕기<br>위한 것입니다. 이는 단순한 홍보를 넘어, 고객의 선택권을 보장하려는 허니문리조트의 꾸준한 노력과 책임감을 보여주는 결과물입니다.</p>
    </div>

    <div class="youtube__videos">
      <!--
        iframe 임베드 안의 미리보기 화면은 유튜브가 자체적으로 그려주는
        부분이라 화질을 직접 제어할 수 없습니다. 대신 유튜브가 제공하는
        고화질 썸네일 이미지(maxresdefault, 1280x720)를 직접 불러와서
        보여주고, 클릭하면 유튜브에서 영상이 재생되도록 구성했습니다.
      -->
      <a class="youtube__video-thumb" href="https://youtu.be/tH4L7d518Lo" target="_blank" rel="noopener">
        <img class="youtube__video-image" src="https://img.youtube.com/vi/tH4L7d518Lo/maxresdefault.jpg" alt="몰디브 신혼여행♥ 이 돈으로 어디를..? | 1인 400만 원, 700만 원, 2000만 원 예산">
        <span class="youtube__play" aria-hidden="true"></span>
      </a>
      <a class="youtube__video-thumb" href="https://youtu.be/7nGZQVozF50" target="_blank" rel="noopener">
        <img class="youtube__video-image" src="https://img.youtube.com/vi/7nGZQVozF50/maxresdefault.jpg" alt="2027년 유럽 신혼여행 이 경비로는 여길 가세요♥ | 1인 400만 원, 700만 원, 2,000만 원 예산">
        <span class="youtube__play" aria-hidden="true"></span>
      </a>
      <a class="youtube__video-thumb" href="https://youtu.be/-6eH8nkyJD0" target="_blank" rel="noopener">
        <img class="youtube__video-image" src="https://img.youtube.com/vi/-6eH8nkyJD0/maxresdefault.jpg" alt="하와이 신혼여행, 빅 아일랜드 코나 페어몬트 오키드 OK?ㅣ사우스 웨스트 항공 주내선 Review">
        <span class="youtube__play" aria-hidden="true"></span>
      </a>
    </div>

    <p class="youtube__collab">유럽의 벨몬드 카루소, 주메이라 마요르카 외에도 몰디브의 포시즌스 란다기라바루, 하와이의 쉐라톤 와이키키, 포시즌스 오아후 앳 코올리나,<br>리츠 칼튼 와이키키 등과 꾸준히 협업하며 고객이 신혼여행지를 더 쉽게 이해할 수 있는 콘텐츠를 선보였습니다.</p>

  </div>
</section>

<!-- ============================================================
   CELEBRITY SECTION ("허니문리조트과 함께한 셀러브리티?")
============================================================= -->

<section class="celeb">
  <div class="celeb__inner">

    <h2 class="section-title">허니문리조트와 함께한 셀러브리티</h2>

    <p class="celeb__lead">허니문리조트는 다양한 셀럽과 신혼여행을 진행해왔습니다.</p>

    <div class="image-card-grid">
      <!-- TODO: 각 카드의 .image-card__image 를 실제 커플 사진으로 교체 -->
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/celeb/aeley-choisihoon.jpg" alt="에일리 · 최시훈"></div>
        <p class="image-card__caption">에일리 · 최시훈</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/celeb/seven-leedahae.jpg" alt="세븐 · 이다해"></div>
        <p class="image-card__caption">세븐 · 이다해</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/celeb/kimkiri-moonjiin.jpg" alt="김기리 · 문지인"></div>
        <p class="image-card__caption">김기리 · 문지인</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/celeb/parkhyunho-eungaeun.jpg" alt="박현호 · 은가은"></div>
        <p class="image-card__caption">박현호 · 은가은</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/celeb/cheondung-mimi.jpg" alt="천둥 · 미미"></div>
        <p class="image-card__caption">천둥 · 미미</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/celeb/simhyungtak-saya.jpg" alt="심형탁 · 사야"></div>
        <p class="image-card__caption">심형탁 · 사야</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/celeb/bada.jpg" alt="바다 부부"></div>
        <p class="image-card__caption">바다 부부<br>(가수이자 뮤지컬 배우)</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/celeb/parkhana-kimtaesul.jpg" alt="박하나 · 김태술"></div>
        <p class="image-card__caption">박하나 · 김태술</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/celeb/chanmi-songeuihwan.jpg" alt="AOA찬미(임도화) · 송의환"></div>
        <p class="image-card__caption">AOA찬미(임도화) · 송의환</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/celeb/daniel-lindemann.jpg" alt="다니엘 린데만 부부"></div>
        <p class="image-card__caption">다니엘 린데만 부부</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/celeb/limsungjae.jpg" alt="임성재 부부"></div>
        <p class="image-card__caption">임성재 부부<br>(PGA 골프 선수)</p>
      </div>
      <div class="image-card">
        <div class="image-card__image"><img class="image-card__photo" src="/new_ver/img/company-intro/celeb/kimgaeun-yoonsunwoo.jpg" alt="김가은 · 윤선우"></div>
        <p class="image-card__caption">김가은 · 윤선우</p>
      </div>
    </div>

    <div class="text-stack celeb__note">
      <p>다양한 유명인 및 스포츠 선수의 허니문을 상담·진행한 경험 역시 맞춤형 신혼여행 운영 경험을 보여주는 사례입니다.</p>
      <p>다양한 고객의 신혼여행 스타일과 일정에 맞춰 신혼여행을 상담하고 진행해온 경험은<br>허니문리조트의 전문성을 보여주는 중요한 신뢰 요소입니다.</p>
    </div>

  </div>
</section>

<!-- ============================================================
   EXPO SECTION ("매주 주말 진행되는 1:1 대면 상담, 허니문리조트 신혼여행 박람회?")
============================================================= -->

<section class="expo">
  <div class="expo__inner">

    <h2 class="section-title">허니문리조트 신혼여행 박람회</h2>

    <div class="expo__stats">
      <div class="expo__stat">
        <p class="expo__stat-number">11 – 19시</p>
        <p class="expo__stat-label">박람회 운영 시간</p>
      </div>
      <div class="expo__stat">
        <p class="expo__stat-number">150 – 300쌍</p>
        <p class="expo__stat-label">회당 참여 예비부부</p>
      </div>
    </div>

    <div class="expo__gallery">
      <img class="expo__gallery-photo" src="/new_ver/img/company-intro/expo/consult-1.png" alt="허니문리조트 1:1 상담 공간">
      <img class="expo__gallery-photo" src="/new_ver/img/company-intro/expo/consult-2.png" alt="허니문리조트 상담실">
      <img class="expo__gallery-photo" src="/new_ver/img/company-intro/expo/consult-6.png" alt="허니문리조트 상담 공간">
      <img class="expo__gallery-photo" src="/new_ver/img/company-intro/expo/consult-4.jpg" alt="허니문리조트 신혼여행 박람회 상담 현장">
      <img class="expo__gallery-photo" src="/new_ver/img/company-intro/expo/consult-5.jpg" alt="허니문리조트 신혼여행 박람회 상담 현장">
      <img class="expo__gallery-photo" src="/new_ver/img/company-intro/expo/consult-3.png" alt="허니문리조트 임직원 업무 현장">
    </div>

    <div class="text-stack text-stack--2col">
      <p>허니문리조트는 매주 주말 신혼여행 박람회를 통해 예비부부가 신혼여행지와 리조트를 직접 비교하고 상담받을 수 있는 자리를 운영합니다. 매달 주말에 진행되는 박람회는 오전 11시부터 오후 7시까지 운영되며, 최소 150쌍에서 최대 300쌍의 예비부부가 참여하는 1:1 맞춤 신혼여행 상담 행사로 운영됩니다. 허니문리조트 신혼여행 박람회에서는 각 신혼여행지에 대한 추가 할인 프로모션, 지역 설명, 리조트 독점 특가 등을 직접 확인할 수 있습니다. 온라인 정보만으로는 알기 어려운 리조트 분위기, 객실 조건, 항공 일정, 투어 구성, 예산 범위를 상담을 통해 비교할 수 있습니다. 허니문리조트 신혼여행 박람회는 스드메·예물 등 결혼 준비 전반을 다루는 일반 웨딩박람회와 달리, 신혼여행 상담과 여행지·리조트 비교에 집중한 허니문 전문 상담&nbsp;행사입니다.</p>
    </div>

  </div>
</section>

<!-- ============================================================
   CONTACT SECTION ("허니문리조트는 예약 후 어떻게 소통?")
============================================================= -->

<section class="contact">
  <div class="contact__inner">

    <h2 class="section-title">허니문리조트는 예약 후 어떻게 소통하나요?</h2>

    <div class="contact__grid">
      <div class="contact__card">
        <p class="contact__card-title">카카오톡 1:1 커뮤니케이션</p>
        <p class="contact__card-desc">허니문리조트는 예약 이후에도 카카오톡을 통한 1:1 커뮤니케이션을 제공합니다. 항공 일정, 호텔 체크인 조건, 식사 포함 여부, 투어와 현지 이동, 여행자 정보, 변경·취소 조건 등 출발 전 필요한 내용을 지속적으로 안내합니다.</p>
      </div>
      <div class="contact__card">
        <p class="contact__card-title">현지 사무실 실시간 대응</p>
        <p class="contact__card-desc">신혼 여행 중 긴급 상황이 발생하는 경우에도 각 신혼여행지에 위치한 현지 사무실을 통해서도 나라별 실시간으로 필요한 확인과 안내를 받을 수 있도록 고객과의 소통 체계를 운영합니다.</p>
      </div>
    </div>

  </div>
</section>

<!-- ============================================================
   BRAND SECTION ("허니문리조트, 브랜드 확장 호텔엔투어, 호텔엔트립, K-웨딩")
============================================================= -->

<section class="brand">
  <div class="brand__inner">

    <h2 class="section-title">허니문리조트의 브랜드 확장</h2>

    <div class="text-stack brand__intro">
      <p>허니문리조트는 신혼여행 전문 브랜드를 중심으로 가족여행 1:1 맞춤 여행 브랜드 호텔엔투어와 하와이 호텔 특가 전문 플랫폼 호텔엔트립, 한국 인바운드 여행사 K-웨딩 by 허니문리조트 등 다양한 브랜드를 함께 운영하고 있습니다.</p>
    </div>

    <div class="brand__grid">
      <div class="brand__card">
        <div class="brand__card-logo"><img class="brand__card-logo-image" src="/new_ver/img/company-intro/logo/hotelntour-logo.png" alt="호텔엔투어"></div>
        <p class="brand__card-name">호텔엔투어</p>
        <p class="brand__card-desc">맞춤형 럭셔리 여행, 가족 여행, 베이비문, 단체 여행, 골프 여행을 위한 브랜드로서 하와이, 몰디브, 유럽, 발리를 주요 시장으로 하며, 12월부터 2월, 6월 말부터 8월까지의 여행 성수기 수요에 맞춘 1:1 맞춤 자유여행 상담을 제공합니다.</p>
      </div>
      <div class="brand__card">
        <div class="brand__card-logo"><img class="brand__card-logo-image" src="/new_ver/img/company-intro/logo/hotelntrip-logo.png" alt="호텔엔트립"></div>
        <p class="brand__card-name">호텔엔트립</p>
        <p class="brand__card-desc">하와이 특화 B2C 패키지 호텔 예약 플랫폼입니다. 하와이를 주요 시장으로 운영하며, 2박 이상 예약 가능한 패키지 숙박 상품을 판매합니다.</p>
      </div>
      <div class="brand__card">
        <div class="brand__card-logo"><img class="brand__card-logo-image" src="/new_ver/img/company-intro/logo/kwedding-logo.png" alt="K-웨딩 by 허니문리조트"></div>
        <p class="brand__card-name">K-웨딩 by 허니문리조트</p>
        <p class="brand__card-desc">서울을 기반으로 라이프스타일과 웨딩 경험을 맞춤 설계하는 프라이빗 컨시어지 인바운드 여행 서비스입니다. 한국을 방문하는 웨딩 인바운드 여행사로 1:1 맞춤 웨딩 상담부터 서울 전체 일정까지 30년 경력의 전문가가 처음부터 끝까지 영어로 진행합니다.</p>
      </div>
    </div>

  </div>
</section>

<!-- ============================================================
   SAFETY SECTION ("허니문리조트 그리고 안전")
============================================================= -->

<section class="safety">
  <div class="safety__inner">

    <h2 class="section-title">허니문리조트 그리고 안전</h2>

    <div class="text-stack safety__intro">
      <p>허니문리조트는 1995년부터 신혼여행을 전문으로 운영해온 여행사로, 고객 보호와 안정적인 여행 서비스 운영을 위한 보증·보험 및 항공 발권 체계를 갖추고 있습니다.</p>
    </div>

    <div class="safety__badges">
      <div class="safety__badge">
        <a class="safety__badge-image" data-fancybox="safety" href="/new_ver/img/company-intro/safety/badge-1-travel-guarantee.jpg" data-caption="일반여행업 보증 가입 증서"><img src="/new_ver/img/company-intro/safety/badge-1-travel-guarantee.jpg" alt="일반여행업 보증 가입 증서"></a>
        <p class="safety__badge-caption">일반여행업 보증 가입</p>
      </div>
      <div class="safety__badge">
        <a class="safety__badge-image" data-fancybox="safety" href="/new_ver/img/company-intro/safety/badge-2-package-guarantee.jpg" data-caption="기획여행업 보증 가입 증서"><img src="/new_ver/img/company-intro/safety/badge-2-package-guarantee.jpg" alt="기획여행업 보증 가입 증서"></a>
        <p class="safety__badge-caption">기획여행영업 보증 가입</p>
      </div>
      <div class="safety__badge">
        <a class="safety__badge-image" data-fancybox="safety" href="/new_ver/img/company-intro/safety/badge-3-liability-insurance.jpg" data-caption="여행업자 배상책임보험 가입 증권"><img src="/new_ver/img/company-intro/safety/badge-3-liability-insurance.jpg" alt="여행업자 배상책임보험 가입 증권"></a>
        <p class="safety__badge-caption">여행업자 배상책임보험 가입</p>
      </div>
      <div class="safety__badge">
        <a class="safety__badge-image" data-fancybox="safety" href="/new_ver/img/company-intro/safety/badge-4-iata-bsp.jpg" data-caption="IATA 국제 항공 운송 협회 인증서"><img src="/new_ver/img/company-intro/safety/badge-4-iata-bsp.jpg" alt="IATA 국제 항공 운송 협회 인증서"></a>
        <p class="safety__badge-caption">IATA 국제 항공 운송 협회 BSP 7억 원 가입</p>
      </div>
      <div class="safety__badge">
        <a class="safety__badge-image" data-fancybox="safety" href="/new_ver/img/company-intro/safety/badge-5-expedia-platinum.jpg" data-caption="Expedia TAAP Platinum Tier 인증서"><img src="/new_ver/img/company-intro/safety/badge-5-expedia-platinum.jpg" alt="Expedia TAAP Platinum Tier 인증서"></a>
        <p class="safety__badge-caption">익스피디아 플래티넘</p>
      </div>
    </div>

    <div class="text-stack text-stack--2col">
      <p>일반여행업 보증과 기획여행업 보증에 가입하고 있으며, 여행 과정에서 발생할 수 있는 사고와 피해에 대비해 여행업자 배상책임보험에도 가입되어 있습니다. 또한 IATA(국제항공운송협회) BSP 7억 원 가입을 통해 국제 항공권 발권 및 정산 업무를 운영하고 있으며, 글로벌 여행 예약 플랫폼 Expedia TAAP Platinum Tier를 획득하는 등 B2B 여행 시장에서도 지속적인 거래 실적을 쌓아왔습니다. 허니문리조트는 이러한 여행업 운영 기반과 함께 1995년부터 축적한 신혼여행 상담 경험, 전국 상담 네트워크, 100명 이상의 임직원 운영 기반을 바탕으로 상담부터 예약, 출발 전 안내까지 신혼여행 전 과정을 체계적으로 지원하고 있습니다.</p>
    </div>

  </div>
</section>

<!-- ============================================================
   JS: 스크롤 등장 애니메이션 + 숫자 카운트업
   - 실제 사이트에 적용할 때는 필요 없어지면 이 <script> 블록과
     위 CSS의 .js-reveal / .js-reveal.is-visible 규칙만 지우면 됩니다.
============================================================= -->
<script>
(function () {
  var revealTargets = document.querySelectorAll(
    '.section-title, .scale__stat, .expo__stat, .expo__gallery-photo, .awards__timeline-item, ' +
    '.verified__card, .contact__card, .brand__card, .process__step, ' +
    '.image-card, .youtube__video-thumb'
  );

  if ('IntersectionObserver' in window) {
    revealTargets.forEach(function (el) {
      el.classList.add('js-reveal');
    });

    var revealObserver = new IntersectionObserver(function (entries, observer) {
      entries.forEach(function (entry) {
        if (entry.isIntersecting) {
          entry.target.classList.add('is-visible');
          observer.unobserve(entry.target);
        }
      });
    }, { threshold: 0.15, rootMargin: '0px 0px -40px 0px' });

    revealTargets.forEach(function (el) {
      revealObserver.observe(el);
    });
  }

  /* 숫자 카운트업: "허니문리조트는 어느 정도 규모?" 섹션의 13개 / 100명+ */
  function animateCount(el, target, duration) {
    var startTime = null;
    function step(timestamp) {
      if (startTime === null) startTime = timestamp;
      var progress = Math.min((timestamp - startTime) / duration, 1);
      var eased = 1 - Math.pow(1 - progress, 3);
      el.firstChild.textContent = Math.round(target * eased);
      if (progress < 1) {
        requestAnimationFrame(step);
      } else {
        el.firstChild.textContent = target;
      }
    }
    requestAnimationFrame(step);
  }

  var numberEls = document.querySelectorAll('.scale__stat-number');

  if ('IntersectionObserver' in window && numberEls.length) {
    var numberObserver = new IntersectionObserver(function (entries, observer) {
      entries.forEach(function (entry) {
        if (entry.isIntersecting) {
          var el = entry.target;
          var target = parseInt(el.textContent, 10);
          if (!isNaN(target)) {
            animateCount(el, target, 1200);
          }
          observer.unobserve(el);
        }
      });
    }, { threshold: 0.5 });

    numberEls.forEach(function (el) {
      numberObserver.observe(el);
    });
  }
})();
</script>

<!-- ============================================================
   JS: 증서·감사패·트로피 사진 확대 보기 (PC 버전과 동일)
   - "허니문리조트 그리고 안전"(data-fancybox="safety") +
     "호텔·리조트 예약 장점" 수상 타임라인(data-fancybox="awards")
   - 새 탭이 아니라 같은 페이지 위 오버레이(Fancybox)로 원본을 크게 표시
============================================================= -->
<script>
(function () {
  if (window.Fancybox) {
    Fancybox.bind('[data-fancybox]', {
      Thumbs: false,
      Toolbar: {
        display: ["counter", "zoomIn", "zoomOut", "slideshow", "fullscreen", "close"]
      }
    });
  }
})();
</script>


</div><!--hr-page-->

<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
</html>
