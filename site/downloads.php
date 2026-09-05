<?php require 'config.php'; $activePage = 'downloads'; ?>
<?php require 'header.php'; ?>

<section class="section">
  <div class="section-head">
    <h2>Downloads</h2>
    <p>Cliente e arquivos necessários para jogar no <?php echo h($serverName); ?>.</p>
  </div>
  <div class="grid">
    <div class="card feature-card">
      <span class="feature-icon">
        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M12 3v12"/><path d="M7 10l5 5 5-5"/><path d="M4 20h16"/></svg>
      </span>
      <h3>Cliente Interlude</h3>
      <p>Link do cliente completo em breve. Peça o link direto no Discord da comunidade se precisar agora.</p>
    </div>
    <div class="card feature-card">
      <span class="feature-icon">
        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M12 3v12"/><path d="M7 10l5 5 5-5"/><path d="M4 20h16"/></svg>
      </span>
      <h3>Patch do Servidor</h3>
      <p>Arquivos extras específicos do <?php echo h($serverName); ?> (system/patch). Link em breve.</p>
    </div>
  </div>
</section>
<?php require 'footer.php'; ?>
