(function(){
  var ASSET = '/honeymoonresort-landing/assets/destinations/';
  var DESTS = ['hawaii','maldives','bali','cancun','kohsamui','phuket','europe','spain','tahiti','dubai','mauritius','australia'];

  /* ---------------- 헤더 스크롤 상태 ---------------- */
  var header = document.getElementById('siteHeader');
  function onScrollHeader(){
    if (window.scrollY > 60) header.classList.add('is-scrolled');
    else header.classList.remove('is-scrolled');
  }
  window.addEventListener('scroll', onScrollHeader, { passive:true });
  onScrollHeader();

  /* ---------------- 히어로 슬라이드쇼 ---------------- */
  var slides = Array.prototype.slice.call(document.querySelectorAll('.hero__slide'));
  var cur = 0, AUTO_MS = 6000, timer;
  var elCurrent = document.getElementById('slideCurrent');
  var elTotal = document.getElementById('slideTotal');
  var elProgress = document.getElementById('slideProgress');
  if (elTotal) elTotal.textContent = String(slides.length).padStart(2,'0');

  function pad(n){ return String(n).padStart(2,'0'); }
  function showSlide(i){
    slides[cur].classList.remove('is-active');
    cur = (i + slides.length) % slides.length;
    slides[cur].classList.add('is-active');
    if (elCurrent) elCurrent.textContent = pad(cur+1);
    if (elProgress) {
      elProgress.style.transition = 'none';
      elProgress.style.width = '0%';
      requestAnimationFrame(function(){
        elProgress.style.transition = 'width ' + AUTO_MS + 'ms linear';
        elProgress.style.width = '100%';
      });
    }
  }
  function next(){ showSlide(cur+1); resetTimer(); }
  function prev(){ showSlide(cur-1); resetTimer(); }
  function resetTimer(){ clearInterval(timer); timer = setInterval(function(){ showSlide(cur+1); }, AUTO_MS); }
  var btnPrev = document.getElementById('slidePrev'), btnNext = document.getElementById('slideNext');
  if (btnPrev) btnPrev.addEventListener('click', prev);
  if (btnNext) btnNext.addEventListener('click', next);
  if (slides.length){ showSlide(0); resetTimer(); }

  /* ---------------- 마퀴: 목적지 사진 두 줄 ---------------- */
  function buildMarquee(id, names){
    var track = document.getElementById(id);
    if (!track) return;
    var html = '';
    for (var rep=0; rep<2; rep++){
      names.forEach(function(name){
        html += '<div class="marquee__item"><img src="' + ASSET + name + '.jpg" alt="" loading="lazy"></div>';
      });
    }
    track.innerHTML = html;
  }
  buildMarquee('mqTop', DESTS.slice(0,6));
  buildMarquee('mqBottom', DESTS.slice(6,12));

  /* ---------------- 브랜드 스토리 슬라이더 ---------------- */
  var STORY = [
    {
      img: ASSET + 'hawaii.jpg',
      eyebrow: 'Since 1995',
      title: '1995년부터,<br>신혼여행을 전문으로',
      desc: '허니문리조트는 1995년부터 신혼여행을 전문으로 안내해 온 여행사입니다. 예비부부의 예산과 여행 스타일에 맞춰 항공·호텔·투어·현지 일정을 함께 구성합니다.',
      stat: [['13','전국 지사'], ['100+','임직원']]
    },
    {
      img: ASSET + 'maldives.jpg',
      eyebrow: 'Global Network',
      title: '포시즌스 7개 지점<br>한국 독점 도매',
      desc: '수년간 쌓아온 글로벌 하이엔드 호텔·리조트 판매 실적을 바탕으로, 포시즌스 호텔 7개 지점의 한국 독점 도매 권한을 확보했습니다. 주메이라, 리딩 호텔 오브 더 월드, 킴튼, 아난타라, 벨몬드와도 파트너십을 운영합니다.',
      stat: [['7', '포시즌스 독점 지점'], ['13', '협업 관광청']]
    },
    {
      img: ASSET + 'europe.jpg',
      eyebrow: 'Verified',
      title: '검증된 신혼여행<br>전문 여행사',
      desc: '하와이, 두바이, 호주 퀸즐랜드, 타히티를 비롯한 13개 관광청과 협업해왔습니다. 2026년 7월에는 미국관광청이 선정한 글로벌 앰버서더로 선정되었습니다.',
      stat: [['2018~', '유튜브 콘텐츠 제작'], ['31년', '신혼여행 상담 경험']]
    }
  ];
  var storyStage = document.getElementById('storyStage');
  var storyCopy = document.getElementById('storyCopy');
  var storyIdx = 0;
  function renderStory(i){
    storyIdx = (i + STORY.length) % STORY.length;
    var s = STORY[storyIdx];
    storyStage.innerHTML = STORY.map(function(item, idx){
      return '<div class="story__img' + (idx===storyIdx ? ' is-active' : '') + '"><img src="' + item.img + '" alt=""></div>';
    }).join('');
    storyCopy.innerHTML =
      '<p class="story__eyebrow">' + s.eyebrow + '</p>' +
      '<h2 class="story__title">' + s.title + '</h2>' +
      '<p class="story__desc">' + s.desc + '</p>' +
      '<div class="story__stat">' + s.stat.map(function(st){
        return '<div><b>' + st[0] + '</b><span>' + st[1] + '</span></div>';
      }).join('') + '</div>' +
      '<div class="story__nav">' +
        '<button id="storyPrev" aria-label="이전"><svg viewBox="0 0 24 24" width="16" height="16" fill="none" stroke="currentColor" stroke-width="1.6"><polyline points="15 5 8 12 15 19" stroke-linecap="round" stroke-linejoin="round"/></svg></button>' +
        '<button id="storyNext" aria-label="다음"><svg viewBox="0 0 24 24" width="16" height="16" fill="none" stroke="currentColor" stroke-width="1.6"><polyline points="9 5 16 12 9 19" stroke-linecap="round" stroke-linejoin="round"/></svg></button>' +
      '</div>';
    document.getElementById('storyPrev').addEventListener('click', function(){ renderStory(storyIdx-1); });
    document.getElementById('storyNext').addEventListener('click', function(){ renderStory(storyIdx+1); });
  }
  if (storyStage && storyCopy) renderStory(0);

  /* ---------------- 목적지 사이드내비 스크롤스파이 ---------------- */
  var destSections = Array.prototype.slice.call(document.querySelectorAll('.dest'));
  var sideLinks = Array.prototype.slice.call(document.querySelectorAll('.side-nav a'));
  if (destSections.length && 'IntersectionObserver' in window) {
    var spy = new IntersectionObserver(function(entries){
      entries.forEach(function(e){
        var link = sideLinks.find(function(a){ return a.dataset.target === e.target.id; });
        if (!link) return;
        if (e.isIntersecting) {
          sideLinks.forEach(function(a){ a.classList.remove('is-active'); });
          link.classList.add('is-active');
        }
      });
    }, { threshold: 0.5 });
    destSections.forEach(function(sec){ spy.observe(sec); });
  }

  /* ---------------- 스크롤 등장 애니메이션 ---------------- */
  var reduce = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
  var reveals = Array.prototype.slice.call(document.querySelectorAll('.reveal'));
  if (reduce || !('IntersectionObserver' in window)) {
    reveals.forEach(function(el){ el.classList.add('in'); });
  } else {
    var io = new IntersectionObserver(function(entries){
      entries.forEach(function(e){
        if (!e.isIntersecting) return;
        e.target.classList.add('in');
        io.unobserve(e.target);
      });
    }, { threshold: 0.14, rootMargin: '0px 0px -8% 0px' });
    reveals.forEach(function(el){ io.observe(el); });
  }

  /* ---------------- 맨 위로 버튼 ---------------- */
  var topBtn = document.getElementById('topBtn');
  window.addEventListener('scroll', function(){
    if (window.scrollY > 600) topBtn.classList.add('is-visible');
    else topBtn.classList.remove('is-visible');
  }, { passive:true });
  topBtn.addEventListener('click', function(){ window.scrollTo({ top:0, behavior:'smooth' }); });
})();
