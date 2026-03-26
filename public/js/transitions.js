document.addEventListener("DOMContentLoaded", () => {
  const loader = document.getElementById("page-loader");
  const overlay = document.getElementById("page-transition");

  // ============================================================
  // MASQUER LOADER ET OVERLAY au chargement
  // ============================================================
  const hideAll = () => {
    setTimeout(() => {
      overlay.classList.add("loaded");
    }, 50);
  };

  // Dès que le DOM est prêt on masque l'overlay
  hideAll();

  // Le loader reste visible jusqu'au chargement complet
  loader.style.display = "flex";
  loader.style.opacity = "1";
  window.addEventListener("load", () => {
    loader.style.opacity = "0";
    setTimeout(() => {
      loader.style.display = "none";
    }, 400);
  });

  // ============================================================
  // TRANSITION DE PAGE
  // ============================================================
  document.querySelectorAll("a[href]").forEach((link) => {
    const href = link.getAttribute("href");
    if (
      !href ||
      href.startsWith("http") ||
      href.startsWith("#") ||
      href.startsWith("mailto") ||
      href.includes("logout")
    ) {
      return;
    }
    link.addEventListener("click", (e) => {
      e.preventDefault();
      overlay.style.transition = "opacity 0.5s ease";
      overlay.style.opacity = "1";
      overlay.style.pointerEvents = "all";
      setTimeout(() => {
        window.location.href = href;
      }, 500);
    });
  });

  // ============================================================
  // PREFETCH AU SURVOL
  // ============================================================
  document.querySelectorAll("a[href]").forEach((link) => {
    link.addEventListener("mouseenter", () => {
      const href = link.getAttribute("href");
      if (!href || href.startsWith("http") || href.startsWith("#")) return;
      const prefetch = document.createElement("link");
      prefetch.rel = "prefetch";
      prefetch.href = href;
      document.head.appendChild(prefetch);
    });
  });
});
